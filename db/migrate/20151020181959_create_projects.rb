class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :organization_id
      t.string :title
      t.text :description
      t.string :project_approval
      t.string :funding_status
      t.string :shipping_status
      t.float :total
      t.text :essay
      t.date :created_at
      t.date :expires_on

      t.timestamps null: false
    end
  end
end
