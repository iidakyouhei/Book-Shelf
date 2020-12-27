json.extract! card, :id, :image, :created_at, :updated_at
json.image card_url(card, format: :json)