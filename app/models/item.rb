class Item < ActiveRecord::Base
  #---------------relationships--------------------
  belongs_to :project

  #---------------validations----------------------
  validates :name, :url, :description, :quantity, :price_per, :total_cost, presence: true
end
