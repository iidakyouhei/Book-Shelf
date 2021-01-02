class CardsController < ApplicationController
  before_action :move_to_index_destroy, only: [:destroy]

  def index
    @cards = Card.order('created_at DESC').limit(30)
    @cards_p = Card.where(type_id: 1).order('created_at DESC')
    @cards_i = Card.where(type_id: 2).order('created_at DESC')
    @cards_t = Card.where(type_id: 3).order('created_at DESC')
    @cards_g = Card.where(type_id: 4).order('created_at DESC')
  end

  def create
    @card = Card.new(card_params)
    if @card.save
      redirect_to root_path
    else
      render :new
    end
  end

  def new
    @card = Card.new
  end

  def show
    @card = Card.find(params[:id])
    @user = User.find(@card.user_id)
    @comment = Comment.new
    @comments = @card.comments.includes(:user)
  end

  def edit
    @card = Card.find(params[:id])
  end
  
  def update
    @card = Card.find(params[:id])
    if @card.update(card_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    if @card.destroy
       redirect_to root_path
    else
      render :edit
    end
  end

  def search
    @cards = Card.search(params[:keyword])
  end

  private


  def card_params
    params.require(:card).permit(:title, :image, :text, :type_id).merge(user_id: current_user.id)
  end

  def move_to_index_destroy
    @card = Card.find(params[:id])
    redirect_to root_path unless current_user.id == @card.user_id
  end
end
