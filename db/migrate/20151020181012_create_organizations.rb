class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.integer :user_id
      t.string :name
      t.string :image
      t.string :contact_phone
      t.string :population_served
      t.integer :annual_funding
      t.integer :number_served
      t.string :shipping_address_1
      t.string :shipping_address_2
      t.string :shipping_city
      t.string :shipping_state
      t.integer :shipping_postal_code
      t.integer :karma, default: 0
      t.string :approval_status, default: "pending"

      t.timestamps null: false
    end
  end
end
