json.extract! card, :id, :url, :created_at, :updated_at
json.url card_url(card, format: :json)