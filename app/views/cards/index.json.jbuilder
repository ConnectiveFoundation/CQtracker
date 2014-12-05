json.array!(@cards) do |card|
  json.extract! card, :id, :serial, :name, :zip, :email
  json.url card_url(card, format: :json)
end
