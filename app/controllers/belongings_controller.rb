class BelongingsController < ApplicationController
  before_action :authenticate_user!

  def create
    @belonging = Belonging.create(clan_id: belonging_params[:clan_id],
                                  user_id: belonging_params[:user_id])
    Request.find(belonging_params[:request_id]).destroy!
    if @belonging.save
      redirect_to clan_url(@belonging.clan), notice:
      "「#{@belonging.user.name}」が、クラン：#{@belonging.clan.name}へ参加しました。"
    else
      redirect_to clan_url(@belonging.clan), notice:
      "「#{@belonging.user.name}」は、#{@belonging.clan.name}へ参加出来ませんでした。【所属クラン数(3)orクラン定員(20)】"
    end
  end

  def edit
    @belonging = Belonging.find(params[:id])
  end

  def update
    @belonging = Clan.find(params[:id])
    @belonging.update(belonging_params)
  end

  def destroy
    @belonging = Belonging.find(params[:id])
    @clan = Clan.find(params[:clan_id])
    @next_user = @clan.users.first
    @next_belonging = Belonging.find_by(clan_id: @clan.id, user_id: @next_user.id)
    if @belonging.clan.users.count == 1
      @belonging.destroy!
      @clan.destroy!
      redirect_to root_path, notice: "メンバー0人となったクラン「#{@clan.name}」が削除されました。"
    elsif @belonging.admin_flg == 1
      @belonging.destroy!
      @next_belonging.update!(clan_id: @clan.id, user_id: @next_user.id, admin_flg: '1')
      redirect_to clan_url(@clan), notice: "クラン「#{@clan.name}」を退会しました。"
    else
      @belonging.destroy!
      redirect_to clan_url(@clan), notice: "クラン「#{@clan.name}」を退会しました。"
    end
  end

  private

  def belonging_params
    params.permit(:clan_id, :user_id, :request_id, :admin_flg)
  end
end
