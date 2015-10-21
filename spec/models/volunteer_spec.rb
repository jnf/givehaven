require 'rails_helper'

RSpec.describe Volunteer, type: :model do
  describe "volunteer model validations" do
    it "requires a name" do
      volunteer2 = Volunteer.create(name: nil)

      expect(volunteer2).to_not be_valid
      expect(volunteer2.errors.keys).to include(:name)
    end

    it "requires a shipping postal code 5 digits in length" do
      volunteer2 = Volunteer.create(name: 'volunteer', contact_phone: '1234567890', approval_status: 'approved', population_served: 'all adults', annual_funding: 12, karma: 1, shipping_address_1: 'address', shipping_city: 'city', shipping_state: 'wa', shipping_postal_code: 1234 )

      expect(volunteer2).to_not be_valid
      expect(volunteer2.errors.keys).to include(:shipping_postal_code)
    end
  end
  it "belongs to a user" do
    user = FactoryGirl.build(:user)
    volunteer = FactoryGirl.build(:volunteer)
    expect(volunteer.user_id).to eq 1
  end
end
