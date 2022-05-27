class CreateFoodRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :food_restaurants do |t|
      t.string :uid
      t.references :food, null: false, foreign_key: true
      t.references :restaurant, null: false, foreign_key: true
      t.string :min_cooking_time
      t.string :max_cooking_time
      t.float :price
      t.string :status
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
