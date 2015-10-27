gifts = [
  { user_id: 1, amount: 50,
    cc_number: '123456789012334', cc_name: 'Brenna Leker', cc_exp: 'Mon, 12 Jan -4712', cc_ccv: 123, cc_address_1: '987 Cinder Ave', cc_city:'Bremerton', cc_state: 'WA', cc_postal_code: 98312, payment_status: 'approved'
  },
  { user_id: 2, amount: 750,
    cc_number: '1234567890123', cc_name: 'Meowmers Bojangles', cc_exp: 'Mon, 12 Jan -4712', cc_ccv: 123, cc_address_1: '124 Oakbrook Lane', cc_city:'Las Vegas', cc_state:'NV', cc_postal_code: 98763, payment_status: 'approved'
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
    user_id: 1, name: 'Roots Young Adult Shelter', contact_phone: '2066321635', image: File.open(File.join('app/assets/images/seeds/rootslogo.png')), population_served: 'teens', annual_funding: 1200000, number_served: 60, shipping_address_1: '1415 NE 43rd St.', shipping_city: 'Seattle', shipping_state: 'WA', shipping_postal_code: 98105, karma: 1, approval_status: 'approved'
  },
  {
    user_id: 2, name: 'Mary\'s Place', contact_phone: '2066218474', image: File.open(File.join('app/assets/images/seeds/marys.png')), population_served: 'women', annual_funding: 540000, number_served: 46, shipping_address_1: '1830 9th Ave', shipping_city: 'Seattle', shipping_state: 'WA', shipping_postal_code: 98101, karma: 2, approval_status: 'approved'
  }
]

organizations.each do |organization|
  Organization.create(organization)
end

projects = [
  {
    organization_id: 1, title: 'Oral Hygiene for Youth in Need', description: 'Help our teen population start the day off right. Dental hygiene is very important and something many of us take for granted.', project_approval: 'approved', funding_status: 'not funded', shipping_status: 'shipped', image: File.open(File.join('app/assets/images/seeds/oral-hygiene.jpg')), total_requested: 1025, total_donated: 430, total_remaining: 595, organization_details: 'ROOTS provides shelter and other essential services to homeless young adults.  We build community, advocate for social justice, and foster dignity among low-income people. Over the last 5 years, ROOTS Young Adult Shelter has seen an enormous increase in the number of times homeless youth have been turned away because of a lack of space. These young people are spiraling out of the foster care system and onto the streets, fleeing abusive homes and failing to find work opportunities to survive in this tough economic climate. ROOTS was the first overnight shelter in the city specifically designed to meet the needs of homeless young adults, and is one of the only co-ed shelters in the city, providing an integral piece of the continuum of care for homeless persons in King County. We mark as our most significant accomplishment that for over eight years, RYAS has operated seven nights per week without ever once having closed due to lack of staffing or volunteers.', project_details: 'Mornings are the most important part of our day. We try our hardest to start our youth out on the right foot. That means a healthy breakfast, warm clothes and a hot shower. We are in desperate need of toothbrushes and toothpaste. These products will be used by the teens staying with and visiting us.', expires_on: 'Mon, 2 Nov 2015 18:12:19 -0700'
  },
  {
    organization_id: 2, title: 'winter warmth', description: 'winter warmth', image:  File.open(File.join('app/assets/images/seeds/winter-warmth.jpeg')), project_approval: 'approved', funding_status: 'funded', shipping_status: 'pending', total_requested: 1200, total_remaining: 0, total_donated: 1200, organization_details: 'we do stuff', project_details: 'winter warmth', expires_on: 'Tue, 26 Jan 2016 18:12:19 -0700'
  },
  {
    organization_id: 1, title: 'A Fresh Start with Resumes', description: 'description', image:  File.open(File.join('app/assets/images/seeds/resume.jpg')), project_approval: 'approved', funding_status: 'not funded', shipping_status: 'pending', total_requested: 400, total_remaining: 400, total_donated: 0, organization_details: 'details', project_details: 'project_details', expires_on: 'Sat, 5 Dec 2015 18:12:19 -0700'
  },
  {
    organization_id: 2, title: 'Fresh Face', description: 'description', image:  File.open(File.join('app/assets/images/seeds/razors.jpg')), project_approval: 'approved', funding_status: 'not funded', shipping_status: 'pending', total_requested: 400, total_remaining: 400, total_donated: 0, organization_details: 'details', project_details: 'project_details', expires_on: 'Sat, 5 Dec 2015 18:12:19 -0700'
  },
  {
    organization_id: 2, title: 'test 3', description: 'description', image:  File.open(File.join('app/assets/images/seeds/feminine.jpg')), project_approval: 'approved', funding_status: 'not funded', shipping_status: 'pending', total_requested: 400, total_remaining: 400, total_donated: 0, organization_details: 'Empowering homeless women, children and families to reclaim their lives by providing shelter, nourishment, resources, healing and hope in a safe community. Mary’s Place is a leading voice for homeless women, children, and families in emergency situations. We empower women to reclaim their lives by offering community, acceptance, hope and dignity. Our work keeps struggling families together and provides practical tools and resources that help women find housing and employment. We inspire the community to support homeless women and families through advocacy, partnerships, volunteerism and philanthropy.', project_details: 'Lorem ipsum dolor sit amet, ne vis dissentias disputando. Vis ad graecis sapientem, duo ne putant qualisque maiestatis. Ei propriae legendos vel, an nonumes senserit sea, an his maiorum honestatis. Velit aperiri dignissim vix id, vix ut liber saepe assentior. Paulo fuisset at nam. Pro te impetus deleniti. Sed vocent feugiat dissentiunt ea, cu mei probatus complectitur, his ut velit paulo euismod. Vim esse laboramus neglegentur an, aperiri euripidis theophrastus eos ea, ius epicurei cotidieque ei. Vim ne dicam officiis eloquentiam, sea no mundi lucilius iracundia. Tempor putent nam ex.', expires_on: 'Wed, 16 Dec 2015 18:12:19 -0700'
  }
]

projects.each do |project|
  Project.create(project)
end

users = [
  {
    username: 'brenninja', email: 'brenna@mail.com', password: 'password', first_name: 'Brenna', last_name: 'Leker', donor: true,
    activated:true
  },
  {
    username: 'bojangles', email: 'meowcifer@mail.com', password: 'password', first_name: 'Meowmers', last_name: 'Bojangles', donor: true,
    activated:true
  },
  {
    username: 'mickey', email: 'mickey@mail.com', password: 'password', first_name: 'Mickey', last_name: 'Mouse', donor: true,
    activated:true
  },
  {
    username: 'minnie', email: 'mickey@mail.com', password: 'password', first_name: 'Minnie', last_name: 'Mouse', donor: true,
    activated:true
  },
  {
    username: 'donald', email: 'donald@mail.com', password: 'password', first_name: 'Donald', last_name: 'Duck', donor: true,
    activated:true
  }
]

users.each do |user|
  User.create(user)
end

volunteers = [
  {
    user_id: 1, bio: 'I\'m awesome.', approval_status: 'approved', role: 'data wrangler'
   },
  {
    user_id: 2, bio: 'I\'m even awesomer.', approval_status: 'pending', role: 'tech wiz'
  },
  {
    user_id: 3, bio: 'The awesomest.', approval_status: 'pending', role: 'data wrangler'
  }
]

volunteers.each do |volunteer|
  Volunteer.create(volunteer)
end
