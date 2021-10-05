json.extract! food, :id, :uid, :slug, :name, :status, :description, :created_at, :updated_at
json.url food_url(food, format: :json)
