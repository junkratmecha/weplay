class RequestsController < ApplicationController
  before_action :authenticate_user! 

  def create
    @request = current_user.requests.create(clan_id: request_params[:clan_id])
    if @request.save
      redirect_to clan_url(request_params[:clan_id]), notice: "参加を申請しました"
    else
      redirect_to clan_url(request_params[:clan_id]), notice: "参加申請に失敗しました。【所属クラン数(3)orクラン定員(20)】"
    end
  end

  def destroy
    @request = Request.find(params[:id])
    @request.destroy!
    @clan = Clan.find(params[:clan_id])
    redirect_to clan_url(@clan), notice: "参加申請を取り消しました"
  end

  private

  def request_params
    params.permit(:clan_id)
  end
end
