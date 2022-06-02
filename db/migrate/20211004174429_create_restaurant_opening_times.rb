class CreateRestaurantOpeningTimes < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurant_opening_times do |t|
      t.string :uid
      t.references :restaurant, null: false, foreign_key: true
      t.string :day
      t.time :start_time
      t.time :end_time
      t.string :status
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
