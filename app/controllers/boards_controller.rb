class BoardsController < ApplicationController
  before_action :set_clan

  

  def create
    @board = @clan.boards.new(board_params)
    if @board.save
      redirect_to clan_path(@clan), notice: 'メッセージが投稿されました'
    else
      @boards = @clan.boards.includes(:user)
      flash.now[:alert] = 'メッセージを入力してください。'
      render :index
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

  def set_clan #③ストロングパラメーターに設定
    @clan = Clan.find(params[:clan_id])
  end

end