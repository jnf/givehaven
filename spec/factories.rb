FactoryGirl.define do

  factory :gift do
    id 1
    project_id 1
    user_id 1
    amount 10
    cc_number '123456789012334'
    cc_name 'Leslie Knope'
    cc_exp "Mon, 12 Jan -4712"
    cc_ccv 123
    cc_address_1 "1234 Happy Lane"
    cc_city 'Pawnee'
    cc_state 'IN'
    cc_postal_code '12345'
    payment_status "awaiting project completion"
  end

  factory :item do
    id 1
    project_id 1
    name "an item"
    description 'does stuff'
    url 'www.stuff.com'
    quantity '1'
    price_per '12.74'
    total_cost '12.74'
  end

	factory :organization do
    id 1
    user_id 1
		name 'Shelter'
		contact_phone '5091201234'
		annual_funding 'jentoof'
		number_served 'jentoof'
    shipping_address_1 '1234 shelter lane'
    shipping_city 'seattle'
    shipping_state 'wa'
    shipping_postal_code '98133'
    karma '2'
    approval_status 'approved'
	end

  factory :project do
    id 1
    organization_id 1
    title 'title'
    description 'description'
    project_approval 'pending'
    funding_status 'not funded'
    shipping_status 'awaiting project completion'
    total 147.75
    essay 'essay'
    expires_on "Mon, 12 Jan -4712"
  end

  factory :user do
    id 1
    email "Leslie@email.com"
    username "waffleluv"
    first_name "Leslie"
    last_name "Knope"
    password_digest "jayjaysforlife"
    donor false
  end

  factory :volunteer do
    id 1
    user_id 1
    bio 'bio'
    approval_status 'approved'
    role 'data wrangler'
  end
end
