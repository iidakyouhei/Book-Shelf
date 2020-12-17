class CardsController < ApplicationController
  def index
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
  private

  def card_params
    params.require(:card).permit(:title, :url, :free, :type_id).merge(user_id: current_user.id)
  end

end
