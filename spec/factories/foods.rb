FactoryBot.define do
  factory :food do
    name { Faker::Food.dish }
    description { Faker::Food.description }
    price { 10000.0 }
    category_id { 1 }
  end

  
end