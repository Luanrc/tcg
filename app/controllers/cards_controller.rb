class CardsController < BaseController
  def index
    render json: {cards: Card.all}, status: :ok
  end

end