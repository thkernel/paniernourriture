json.extract! food_category, :id, :uid, :name, :description, :status, :account_id, :created_at, :updated_at
json.url food_category_url(food_category, format: :json)
