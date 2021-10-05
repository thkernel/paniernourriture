class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :uid
      t.references :customer, null: false, foreign_key: true
      t.references :restaurant, null: false, foreign_key: true
      t.float :total_amount
      

      t.timestamps
    end
  end
end
