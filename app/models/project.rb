class Project < ActiveRecord::Base
  #---------------relationships--------------------
  belongs_to :organization
  has_many :items

  #---------------validations----------------------
  validates :title, :description, :project_approval, :funding_status, :shipping_status, :project_details, :organization_details, :expires_on, presence: true

  validates :description, length: { maximum: 250 }
  validates :title, length: { maximum: 60 }
  validates :project_details, :organization_details, length: { minimum: 1025 }

  #---------------uploaders-------------------------
  mount_uploader :image, ImageUploader

  #---------------SCOPE-----------------------------
  # scope :ordered_by_create, -> { order('projects.created_at') }
  # scope :ordered_by_expire, -> { order('projects.expires_on') }
  # scope :active_projects, -> { where(approval_status: 'approved') AND where(funding_status: 'not funded') }

  def active_projects
    Project.where('approval_status = ? AND funding_status = ?', 'approved', 'not funded')
  end

end
