class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :project_id
      t.string :name
      t.string :description
      t.string :url
      t.integer :quantity
      t.float :price_per
      t.float :total_cost

      t.timestamps null: false
    end
  end
end
