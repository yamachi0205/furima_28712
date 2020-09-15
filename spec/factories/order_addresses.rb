FactoryBot.define do
  factory :order_address do
    postal_code   { '123-4567' }
    area_id       { 2 }
    city          { '大阪市' }
    house_number  { 'おおさか1−1−1−1' }
    phone_number  { '0901234567' }
  end
end
