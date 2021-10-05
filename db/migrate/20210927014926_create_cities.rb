class CreateCities < ActiveRecord::Migration[6.1]
  def change
    create_table :cities do |t|
      t.string :uid
      t.string :slug
      t.string :name
      t.string :status
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
