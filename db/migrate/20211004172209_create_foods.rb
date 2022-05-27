class CreateFoods < ActiveRecord::Migration[6.1]
  def change
    create_table :foods do |t|
      t.string :uid
      t.string :slug
      t.references :food_category, foreign_key: true
      t.string :name
      t.string :status
      t.text :description
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
