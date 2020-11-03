class BoardsController < ApplicationController
  before_action :set_clan
  before_action :authenticate_user!

  def create
    @board = @clan.boards.new(board_params)
    if @board.save
      redirect_to clan_path(@clan), notice: 'メッセージが投稿されました'
    else
      @boards = @clan.boards.includes(:user)
      redirect_to clan_path(@clan), alert: 'メッセージが無効(空白or140字以上)です。'
    end
  end

  def destroy
    @board = Board.find(params[:board_id])
    @board.destroy
    redirect_to clan_path, notice: "ボードへの投稿を削除しました。"
  end

  private

  def board_params
    params.require(:board).permit(:content).merge(user_id: current_user.id)
  end

  def set_clan
    @clan = Clan.find(params[:clan_id])
  end
end
