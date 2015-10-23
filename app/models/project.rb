class Project < ActiveRecord::Base
  #---------------relationships--------------------
  belongs_to :organization
  has_many :items

  #---------------validations----------------------
  validates :title, :description, :project_approval, :funding_status, :shipping_status, :project_details, :organization_details, :expires_on, presence: true

  validates :description, length: { maximum: 250 }
  validates :project_details, :organization_details, length: { minimum: 250 }
end
