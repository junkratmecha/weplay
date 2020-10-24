class BelongingsController < ApplicationController

  def create
    @belonging = Belonging.create
    (clan_id: belonging_params[:clan_id], user_id: belonging_params[:user_id])
    Request.find(belonging_params[:request_id]).destroy!
    redirect_to clan_requests_url(@belonging.clan),
    notice: "「#{@belonging.user.name}」が、クラン：#{@belonging.clan.name}へ加入しました。"
  end

  def destroy
    @belonging = Belonging.find(params[:id])
    @belonging.destroy!
    @clan = Clan.find(params[:clan_id])
    redirect_to clan_url(@clan), notice: "コミュニティ「#{@clan.name}」を退会しました。"
  end

  private

  def belonging_params
    params.permit(:clan_id, :user_id, :request_id)
  end
end
