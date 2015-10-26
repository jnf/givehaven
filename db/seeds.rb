gifts = [
  { user_id: 1, amount: 50,
    cc_number: "123456789012334", cc_name: "Brenna Leker", cc_exp: "Mon, 12 Jan -4712", cc_ccv: 123, cc_address_1: "987 Cinder Ave", cc_city:"Bremerton", cc_state: "WA", cc_postal_code: 98312, payment_status: "approved"
  },
  { user_id: 2, amount: 750,
    cc_number: "1234567890123", cc_name: "Meowmers Bojangles", cc_exp: "Mon, 12 Jan -4712", cc_ccv: 123, cc_address_1: "124 Oakbrook Lane", cc_city:"Las Vegas", cc_state:"NV", cc_postal_code: 98763, payment_status: "approved"
   }
]

gifts.each do |gift|
  Gift.create(gift)
end

items = [
  {
    project_id: 1, name: 'toothepaste', description: 'Crest megawhite', url: 'http://www.amazon.com/Colgate-Total-Whitening-Toothpaste-tubes/dp/B001KYS2UA/ref=sr_1_1?ie=UTF8&qid=1445377243&sr=8-1&keywords=toothpaste', quantity: 70, price_per: 1.10, total_cost: 77
  },
  {
    project_id: 1, name: 'toothebrushes', description: 'medium bristle', url: 'http://www.amazon.com/Colgate-Extra-Clean-Toothbrush-Count/dp/B00CC6XSSQ/ref=sr_1_1?ie=UTF8&qid=1445377376&sr=8-1&keywords=toothbrush', quantity: 125, price_per: 0.75, total_cost: 93.75
  },
  {
    project_id: 2, name: 'socks', description: 'white padded', url: 'http://www.amazon.com/Colgate-Extra-Clean-Toothbrush-Count/dp/B00CC6XSSQ/ref=sr_1_1?ie=UTF8&qid=1445377376&sr=8-1&keywords=toothbrush', quantity: 200, price_per: 1.75, total_cost: 300
  },
  {
    project_id: 2, name: 'mittens', description: 'cotton', url: 'http://www.amazon.com/Colgate-Extra-Clean-Toothbrush-Count/dp/B00CC6XSSQ/ref=sr_1_1?ie=UTF8&qid=1445377376&sr=8-1&keywords=toothbrush', quantity: 100, price_per: 0.55, total_cost: 55
   }
]

items.each do |item|
  Item.create(item)
end

organizations = [
  {
    user_id: 1, name: "Roots Young Adult Shelter", contact_phone: "2066321635", population_served: "teens", annual_funding: 1200000, number_served: 60, shipping_address_1: "1415 NE 43rd St.", shipping_city: "Seattle", shipping_state: "WA", shipping_postal_code: 98105, karma: 1, approval_status: "approved", image: 'rootslogo.png'
  },
  {
    user_id: 2, name: "P Sherman Wallaby House", contact_phone: "9087654321", population_served: "women", annual_funding: 540000, number_served: 46, shipping_address_1: "456 Pickupstix Ave", shipping_city: "Seattle", shipping_state: "WA", shipping_postal_code: 98315, karma: 2, approval_status: "approved"
  }
]

organizations.each do |organization|
  Organization.create(organization)
end

projects = [
  {
    organization_id: 1, title: "Oral Hygiene for Youth in Need", description: "oral hygiene", project_approval: "approved", funding_status: "not funded", shipping_status: "shipped", image: 'oral-hygiene.jpg', total_requested: 1025, total_donated: 430, total_remaining: 595, organization_details: 'ROOTS provides shelter and other essential services to homeless young adults.  We build community, advocate for social justice, and foster dignity among low-income people. Over the last 5 years, ROOTS Young Adult Shelter has seen an enormous increase in the number of times homeless youth have been turned away because of a lack of space. These young people are spiraling out of the foster care system and onto the streets, fleeing abusive homes and failing to find work opportunities to survive in this tough economic climate. ROOTS was the first overnight shelter in the city specifically designed to meet the needs of homeless young adults, and is one of the only co-ed shelters in the city, providing an integral piece of the continuum of care for homeless persons in King County. We mark as our most significant accomplishment that for over eight years, RYAS has operated seven nights per week without ever once having closed due to lack of staffing or volunteers.', project_details: 'Mornings are the most important part of our day. We try our hardest to start our youth out on the right foot. That means a healthy breakfast, warm clothes and a hot shower. We are in desperate need of toothbrushes and toothpaste.', expires_on: "Mon, 12 Jan -4712"
  },
  {
    organization_id: 2, title: "winter warmth", description: "winter warmth", project_approval: "approved", funding_status: "funded", shipping_status: "pending", total_requested: 1200, total_remaining: 0, total_donated: 1200, organization_details: 'we do stuff', project_details: "winter warmth", expires_on: "Mon, 12 Jan -4712"
  }
]

projects.each do |project|
  Project.create(project)
end

users = [
  {
    username: "brenninja", email: "brenna@mail.com", password: "password", first_name: "Brenna", last_name: "Leker", donor: true,
    activated:true
  },
  {
    username: "bojangles", email: "meowcifer@mail.com", password: "password", first_name: "Meowmers", last_name: "Bojangles", donor: true,
    activated:true
  },
  {
    username: "mickey", email: "mickey@mail.com", password: "password", first_name: "Mickey", last_name: "Mouse", donor: true,
    activated:true
  },
  {
    username: "minnie", email: "mickey@mail.com", password: "password", first_name: "Minnie", last_name: "Mouse", donor: true,
    activated:true
  },
  {
    username: "donald", email: "donald@mail.com", password: "password", first_name: "Donald", last_name: "Duck", donor: true,
    activated:true
  }
]

users.each do |user|
  User.create(user)
end

volunteers = [
  {
    user_id: 1, bio: "I'm awesome.", approval_status: "approved", role: "data wrangler"
   },
  {
    user_id: 2, bio: "I'm even awesomer.", approval_status: "pending", role: "tech wiz"
  },
  {
    user_id: 3, bio: "The awesomest.", approval_status: "pending", role: "data wrangler"
  }
]

volunteers.each do |volunteer|
  Volunteer.create(volunteer)
end
