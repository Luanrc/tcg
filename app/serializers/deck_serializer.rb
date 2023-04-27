class DeckSerializer < ActiveModel::Serializer
  include FastJsonapi::ObjectSerializer

  attributes :id, :name

  attribute :cards do |record|
    record.cards.map do |card|
      {
        name: card.name,
        description: card.description
      }
    end
  end

  def serialized_json
    return { deck: to_hash[:data][:attributes] }
  end
end