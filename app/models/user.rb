class User < ActiveRecord::Base
  has_secure_password
  #---------------relationships--------------------
  has_many :gifts

  #---------------validations----------------------
  validates :email, :username, :first_name, :last_name, presence: true
  validates :username, :email, uniqueness: true
end
