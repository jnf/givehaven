class CreateVolunteers < ActiveRecord::Migration
  def change
    create_table :volunteers do |t|
      t.integer :user_id
      t.text :bio
      t.string :approval_status
      t.string :role

      t.timestamps null: false
    end
  end
end
