FactoryBot.define do
  factory :item do
    name          { 'test' }
    price         { 1000 }
    category_id   { 2 }
    comment       { 'test' }
    status_id     { 2 }
    postage_id    { 2 }
    area_id       { 2 }
    days_id       { 2 }
    association :user
    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
