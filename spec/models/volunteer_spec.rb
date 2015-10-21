require 'rails_helper'

RSpec.describe Volunteer, type: :model do
  describe "volunteer model validations" do
    it "requires a bio" do
      volunteer2 = Volunteer.create(approval_status: 'approved', role: 'tech wiz')

      expect(volunteer2).to_not be_valid
      expect(volunteer2.errors.keys).to include(:bio)
    end

    it "belongs to a user" do
      user = FactoryGirl.build(:user)
      volunteer = FactoryGirl.build(:volunteer)
      expect(volunteer.user_id).to eq 1
    end
  end
end
