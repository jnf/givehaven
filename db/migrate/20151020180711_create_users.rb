class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :username
      t.string :first_name
      t.string :last_name
      t.string :password_digest
      t.string :activation_digest
      t.boolean :activated
      t.boolean :donor, default: false

      t.timestamps null: false
    end
  end
end
