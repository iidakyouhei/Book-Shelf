class CardsController < ApplicationController

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
  end
  def show_image
    @image = Card.find(params[:id])
    # send_data @image.url, :type => 'image/jpeg', :disposition => 'inline'
  end
  private


  def card_params
    params.require(:card).permit(:title, :url, :free, :type_id).merge(user_id: current_user.id)
  end

end
