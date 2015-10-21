class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :organization_id
      t.string :title
      t.text :description
      t.string :project_approval, default: 'pending'
      t.string :funding_status, default: 'not funded'
      t.string :shipping_status, default: 'awaiting project completion'
      t.float :total
      t.text :essay
      t.date :expires_on, default: Date.today + 3.month

      t.timestamps null: false
    end
  end
end
