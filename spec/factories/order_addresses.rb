FactoryBot.define do
  factory :order_address do
    postal_code   { '123-4567' }
    area_id       { 2 }
    city          { '大阪市' }
    house_number  { 'おおさか1−1−1−1' }
    building_name { '' }
    phone_number  { '09012345678' }
    token         { 'oosaka' }
  end
end
