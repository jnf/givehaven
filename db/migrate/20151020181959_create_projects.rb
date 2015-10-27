class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :organization_id
      t.string :title
      t.string :image
      t.text :description
      t.string :project_approval, default: 'pending'
      t.string :funding_status, default: 'not funded'
      t.string :shipping_status, default: 'awaiting project completion'
      t.float :total_donated, default: 0
      t.float :total_remaining
      t.float :total_requested
      t.text :organization_details
      t.text :project_details
      t.datetime :expires_on, default: DateTime.now + 3.month

      t.timestamps null: false
    end
  end
end
