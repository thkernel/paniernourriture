json.extract! restaurant, :id, :uid, :slug, :name, :address, :country, :city, :status, :description, :created_at, :updated_at
json.url restaurant_url(restaurant, format: :json)
