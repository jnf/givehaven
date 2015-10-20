class Volunteer < ActiveRecord::Base
  #---------------relationships--------------------
  belongs_to :user

  #---------------validations----------------------
  validates :bio, :approved, :role, presence: true
  
end
