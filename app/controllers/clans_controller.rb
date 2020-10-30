class ClansController < ApplicationController
  before_action :authenticate_user!, only: [:create, :update, :destroy]

  def index
    @q = Clan.ransack(params[:q])
    @tags = ActsAsTaggableOn::Tag.all
    if params[:tag_name]
      @clans = @q.result(distinct: true).tagged_with("#{params[:tag_name]}").page(params[:page]).per(12)
    else
      @clans = @q.result(distinct: true).page(params[:page]).per(12)
    end
  end

  def show
    @clan = Clan.find(params[:id])
    @requests = Request.where(clan_id: params[:clan_id])
    @belongings = Belonging.where(clan_id: @clan.id)
    @board = Board.new
    @boards = @clan.boards.includes(:user)
    if current_user
      @belonging = Belonging.find_by(clan_id: @clan.id, user_id: current_user.id)
      @request = Request.find_by(clan_id: @clan.id, user_id: current_user.id)
    end
  end

  def new
    @clan = Clan.new
    @clan.users << current_user
    @tags = ActsAsTaggableOn::Tag.all
  end

  def create
    @clan = Clan.new(clan_params)
    @tags = ActsAsTaggableOn::Tag.all
    if @clan.save
      Belonging.create!(clan_id: @clan.id, user_id: current_user.id, admin_flg: '1')
      redirect_to root_path, notice: 'クランを作成しました'
    else
      render :new
    end
  end

  def edit
    @clan = Clan.find(params[:id])
    @tags = ActsAsTaggableOn::Tag.all
  end

  def update
    @clan = Clan.find(params[:id])
    @tags = ActsAsTaggableOn::Tag.all
    if @clan.update(clan_params)
      redirect_to clan_path(@clan), notice: 'クランプロフィールを編集しました'
    else
      render :edit
    end
  end

  def destroy
    @clan = Clan.find(params[:id])
    @clan.destroy
    redirect_to clans_url, notice: "クラン「#{@clan.name}」を削除しました。"
  end

  private

  def clan_params
    params.require(:clan).permit(
    :name, :image, :level, :status, :atomosphere, :average_age, :clan_introduction, :tag_list, user_ids: []
    )
  end
end
