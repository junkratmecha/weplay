class BelongingsController < ApplicationController
  before_action :authenticate_user!

  def create
      @belonging = Belonging.create(clan_id: belonging_params[:clan_id], user_id: belonging_params[:user_id])
      Request.find(belonging_params[:request_id]).destroy!
      if @belonging.save
        redirect_to clan_url(@belonging.clan), notice:"「#{@belonging.user.name}」が、クラン：#{@belonging.clan.name}へ参加しました。"
      else
        redirect_to clan_url(@belonging.clan), notice:"「#{@belonging.user.name}」は、#{@belonging.clan.name}へ参加出来ませんでした。【所属クラン数(3)orクラン定員(20)】"
      end
  end

  def destroy
      @belonging = Belonging.find(params[:id])
      @belonging.destroy!
      @clan = Clan.find(params[:clan_id])
      redirect_to clan_url(@clan), notice: "クラン「#{@clan.name}」を退会しました。"    
  end

  private

  def belonging_params
      params.permit(:clan_id, :user_id, :request_id)
  end

end