require 'rails_helper'

RSpec.describe User, type: :model do
  describe "user model validations" do
    it "requires a username, email, first and last name" do
      user = build :user, username: nil, first_name: "Bob", last_name: "Jones"

      expect(user).to_not be_valid
      expect(user.errors.keys).to include(:name)
    end

    it "requires a unique username and email address" do
      user = create :user
      user1 = build :user, name: "User"

      expect(user1).to_not be_valid
      expect(user1.errors.keys).to include(:username)
      expect(User.count).to eq 1
    end
  end
end
