class CreateOrderItems < ActiveRecord::Migration[6.1]
  def change
    create_table :order_items do |t|
      t.string :uid
      t.references :order, null: false, foreign_key: true
      t.references :food, null: false, foreign_key: true
      t.integer :quantity
      t.float :price
      t.float :amount

      t.timestamps
    end
  end
end
