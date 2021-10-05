class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :uid
      t.string :slug
      t.string :name
      t.string :address
      t.string :country
      t.string :city
      t.string :phone
      t.string :email
      t.string :street
      t.string :po_box
      t.string :zip_code
      t.string :status
      t.text :description
      

      t.timestamps
    end
  end
end
