class CreateOrderStatuses < ActiveRecord::Migration[6.1]
  def change
    create_table :order_statuses do |t|
      t.string :uid
      t.string :name
      t.string :status
      t.text :description
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
