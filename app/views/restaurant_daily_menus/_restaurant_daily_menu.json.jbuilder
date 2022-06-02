json.extract! restaurant_daily_menu, :id, :uid, :day, :food_id, :restaurant_id, :status, :account_id, :created_at, :updated_at
json.url restaurant_daily_menu_url(restaurant_daily_menu, format: :json)
