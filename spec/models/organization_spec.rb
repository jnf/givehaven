require 'rails_helper'

RSpec.describe Organization, type: :model do
  describe "organization model validations" do
    it "requires a name" do
      organization2 = Organization.create(name: nil)

      expect(organization2).to_not be_valid
      expect(organization2.errors.keys).to include(:name)
    end

    it "requires a shipping postal code 5 digits in length" do
      organization2 = Organization.create(name: 'organization', contact_phone: '1234567890', approval_status: 'approved', population_served: 'all adults', annual_funding: 12, karma: 1, shipping_address_1: 'address', shipping_city: 'city', shipping_state: 'wa', shipping_postal_code: 1234 )

      expect(organization2).to_not be_valid
      expect(organization2.errors.keys).to include(:shipping_postal_code)
    end
  end
  it "belongs to a user" do
    user = FactoryGirl.build(:user)
    organization = FactoryGirl.build(:organization)
    expect(organization.user_id).to eq 1
  end
end
