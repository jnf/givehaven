gifts = [
  { user_id: 1, amount: 50,
    cc_number: 123456789012334, cc_name: "Brenna Leker", cc_exp:, cc_ccv: 123, cc_address_1: "987 Cinder Ave", cc_address_2:, cc_city:"Bremerton", cc_state: "WA", cc_postal_code: 98312, payment_status: "approved" },
  { user_id: 2, amount: 750,
    cc_number: 1234567890123, cc_name: "Meowmers Bojangles", cc_exp:, cc_ccv: 123, cc_address_1: "124 Oakbrook Lane", cc_address_2:, cc_city:"Las Vegas", cc_state:"NV", cc_postal_code: 98763, payment_status: "approved" }
]

gifts.each do |gift|
  Gift.create(gift)
end

users = [
  { username: "brenninja", email: "brenna@mail.com", password: "password", first_name: "Brenna", last_name: "Leker", donor: true },
  { username: "bojangles", email: "meowcifer@mail.com", password: "password", first_name: "Meowmers", last_name: "Bojangles", donor: true }
]

users.each do |user|
  User.create(user)
end

items = [
  { project_id: 1, name: 'toothepaste', description: 'Crest megawhite', url: 'http://www.amazon.com/Colgate-Total-Whitening-Toothpaste-tubes/dp/B001KYS2UA/ref=sr_1_1?ie=UTF8&qid=1445377243&sr=8-1&keywords=toothpaste', quantity: 70, price_per: 1.10, total_cost: 77 },
  { project_id: 1, name: 'toothebrushes', description: 'medium bristle', url: 'http://www.amazon.com/Colgate-Extra-Clean-Toothbrush-Count/dp/B00CC6XSSQ/ref=sr_1_1?ie=UTF8&qid=1445377376&sr=8-1&keywords=toothbrush', quantity: 125, price_per: .75, total_cost: 93.75 },
  { project_id: 2, name: 'socks', description: 'white padded', url: 'http://www.amazon.com/Colgate-Extra-Clean-Toothbrush-Count/dp/B00CC6XSSQ/ref=sr_1_1?ie=UTF8&qid=1445377376&sr=8-1&keywords=toothbrush', quantity: 200, price_per: 1.75, total_cost: 300 },
  { project_id: 2, name: 'mittens', description: 'cotton', url: 'http://www.amazon.com/Colgate-Extra-Clean-Toothbrush-Count/dp/B00CC6XSSQ/ref=sr_1_1?ie=UTF8&qid=1445377376&sr=8-1&keywords=toothbrush', quantity: 100, price_per: .55, total_cost: 55 }
]

products.each do |product|
  Product.create(product)
end

reviews = [
  { rating: 4, review_text: "great secret!", product_id: 1 },
  { rating: 3, review_text: "lousy secret", product_id: 2 },
  { rating: 1, review_text: "gross, i can't even", product_id: 3 },
  { rating: 5, review_text: "awesome, love hacking jerks", product_id: 3 },
  { rating: 2, review_text: "stalking is the best!", product_id: 4 },
]

reviews.each do |review|
  Review.create(review)
end

#orders up to 8
order_items = [
  { quantity: 1, item_total: 1000, product_id: 1, order_id: 1 },
  { quantity: 1, item_total: 500, product_id: 3, order_id: 2 },
  { quantity: 2, item_total: 40000, product_id: 2, order_id: 3 },
  { quantity: 2, item_total: 20000, product_id: 4, order_id: 3 },
  { quantity: 1, item_total: 1000, product_id: 5, order_id: 4 },
  { quantity: 3, item_total: 1500, product_id: 3, order_id: 4 },
  { quantity: 1, item_total: 1000, product_id: 1, order_id: 4 },
  { quantity: 2, item_total: 20000, product_id: 8, order_id: 5 },
  { quantity: 1, item_total: 8000, product_id: 7, order_id: 6 },
  { quantity: 1, item_total: 1000, product_id: 5, order_id: 6 },
  { quantity: 2, item_total: 10000, product_id: 6, order_id: 7 },
  { quantity: 4, item_total: 12000, product_id: 10, order_id: 8 },
  { quantity: 1, item_total: 1000, product_id: 9, order_id: 8 }
]

order_items.each do |order_item|
  OrderItem.create(order_item)
end

categories = [
  {name: "email address"},
  {name: "home address"},
  {name: "contact info"},
  {name: "password"},
  {name: "state secret"},
  {name: "personal secret"},
  {name: "celebrity"},
  {name: "financial"},
  {name: "educational"}
]

categories.each do |category|
  Category.create(category)
end

product_categories = [
  {product_id: 1, category_id: 1},
  {product_id: 1, category_id: 9},
  {product_id: 1, category_id: 3},
  {product_id: 2, category_id: 4},
  {product_id: 2, category_id: 8},
  {product_id: 3, category_id: 4},
  {product_id: 3, category_id: 6},
  {product_id: 4, category_id: 2},
  {product_id: 4, category_id: 6},
  {product_id: 4, category_id: 7},
  {product_id: 4, category_id: 3}
]

product_categories.each do |product_category|
  ProductCategory.create(product_category)
end
