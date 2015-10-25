require 'rails_helper'

RSpec.describe User, type: :model do
  describe "user model validations" do
    it "requires a username, email, password, first and last name" do
      user2 = User.create(username: nil, email: 'bob@email.com', first_name: 'Bob', last_name: 'Jones' )

      expect(user2).to_not be_valid
      expect(user2.errors.keys).to include(:username)
    end
  end
end
