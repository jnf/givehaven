class User < ActiveRecord::Base
  #---------------relationships--------------------
  has_many :gifts

  #---------------validations----------------------
  validates :email, :username, :first_name, :last_name, :donor, presence: true
end
