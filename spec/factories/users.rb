FactoryBot.define do
  factory :user do
    family_name { '山田' }
    family_name_reading { 'ヤマダ' }
    first_name              { '太郎' }
    first_name_reading      { 'タロウ' }
    nickname                { 'yamada' }
    birthday                { '2000-01-01' }
    email                   { Faker::Internet.free_email }
    password                { 'aa3456' }
    password_confirmation   { password }
  end
end
