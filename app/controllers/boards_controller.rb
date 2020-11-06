class BoardsController < ApplicationController
  before_action :set_clan
  before_action :authenticate_user!

  def create
    @board = Board.create(board_params)
    @board.save
    respond_to do |format|
      format.html { redirect_to clan_path(params[:clan_id])  }
      format.json
    end
  end

  def destroy
    @board = Board.find(params[:board_id])
    @board.destroy
  end

  private
  def board_params
    params.require(:board).permit(:content).merge(user_id: current_user.id, clan_id: params[:clan_id])
  end

  def set_clan
    @clan = Clan.find(params[:clan_id])
  end
end
