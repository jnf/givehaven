class Volunteer < ActiveRecord::Base
  #---------------relationships--------------------
  belongs_to :user

  #---------------validations----------------------
  validates :bio, :approval_status, :role, presence: true
  validates :user_id, uniqueness: true

end
