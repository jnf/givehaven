class Gift < ActiveRecord::Base
  #---------------relationships--------------------
  belongs_to :user
  belongs_to :organization

  #---------------validations----------------------
  validates :amount, :cc_name, :cc_number, :cc_exp, :cc_ccv, :cc_address_1, :cc_address_2, :cc_city, :cc_state, :cc_postal_code, :payment_status, presence: true
  #cc numbers for US card companies range in length from 13-16 characters
  validates :cc_number, length: { minimum: 13, maximum: 16 }

end
