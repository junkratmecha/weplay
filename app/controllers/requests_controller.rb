class RequestsController < ApplicationController
  def create
    current_user.requests.create(clan_id: request_params[:clan_id])
    redirect_to clan_url(request_params[:clan_id]), notice: "加入申請しました"
  end

  def destroy
    @request = Request.find(params[:id])
    @request.destroy!
    @clan = Clan.find(params[:clan_id])
    redirect_to clan_url(@clan), notice: "加入申請を取り消しました"
  end

  private

  def request_params
    params.permit(:clan_id)
  end
end
