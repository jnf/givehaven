class Organization < ActiveRecord::Base
  #---------------relationships--------------------
  belongs_to :user

  #---------------validations----------------------
  validates :name, :contact_phone, :approved, :population_served, :annual_funding, :number_served, :shipping_address_1, :shipping_address_2, :shipping_city, :shipping_state, :shipping_postal_code, :karma presence: true

  validates :shipping_postal_code, length: { is: 5 }
  valdiates :contact_phone, length: { is: 10 }
end
