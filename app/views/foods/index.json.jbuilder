json.array!(@foods) do |food|
  json.extract! food, :id, :red_meat, :poultry, :seafood, :vegetables, :milk, :other_drinks
  json.url food_url(food, format: :json)
end
