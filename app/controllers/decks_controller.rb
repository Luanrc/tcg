class DecksController < BaseController
  before_action :set_deck

  def index
    render json: {decks: Deck.all}, status: :ok
  end


  def show
    render json: DeckSerializer.new(@deck).serialized_json, status: :ok
  end

  private

  def set_deck
    @deck = Deck.find(params[:id])
  end
end