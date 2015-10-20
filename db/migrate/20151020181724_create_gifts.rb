class CreateGifts < ActiveRecord::Migration
  def change
    create_table :gifts do |t|
      t.integer :project_id
      t.integer :user_id
      t.integer :amount
      t.string :cc_number
      t.string :cc_name
      t.date :cc_exp
      t.integer :cc_ccv
      t.string :cc_address_1
      t.string :cc_address_2
      t.string :cc_city
      t.string :cc_state
      t.integer :cc_postal_code
      t.string :payment_status

      t.timestamps null: false
    end
  end
end
