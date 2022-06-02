class CreateRestaurantDailyMenus < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurant_daily_menus do |t|
      t.string :uid
      t.string :day
      t.references :food, null: false, foreign_key: true
      t.references :restaurant, null: false, foreign_key: true
      t.string :status
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
