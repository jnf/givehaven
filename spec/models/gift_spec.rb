# require 'rails_helper'
#
# RSpec.describe Gift, type: :model do
#   describe "gift model validations" do
#     it "requires a credit card expiration date" do
#       gift2 = Gift.create(cc_name: 'name', amount: 250, cc_number: '1234567890123', cc_ccv: 123, cc_address_1: 'address', cc_city: 'city', cc_state: 'wa', cc_postal_code: 1234)
#
#       expect(gift2).to_not be_valid
#       expect(gift2.errors.keys).to include(:cc_exp)
#     end
#
#     it "requires a credit card # 13-16 digits in length" do
#       gift2 = Gift.create(cc_name: 'name', amount: 250, cc_number: '123456789', cc_exp: "Mon, 12 Jan -4712", cc_ccv: 123, cc_address_1: 'address', cc_city: 'city', cc_state: 'wa', cc_postal_code: 1234)
#
#       expect(gift2).to_not be_valid
#       expect(gift2.errors.keys).to include(:cc_number)
#     end
#   end
#   it "belongs to a user" do
#     user = FactoryGirl.build(:user)
#     project = FactoryGirl.build(:project)
#     gift = FactoryGirl.build(:gift)
#     expect(gift.project_id).to eq 1
#     expect(gift.user_id).to eq 1
#   end
# end
