json.array!(@brunches) do |brunch|
  json.extract! brunch, :id, :name, :opening_time, :closing_time, :vegetarian_options_available, :address
  json.url brunch_url(brunch, format: :json)
end
