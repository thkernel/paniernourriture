class CreateFoodCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :food_categories do |t|
      t.string :uid
      t.string :name
      t.text :description
      t.string :status
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
