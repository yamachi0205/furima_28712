FactoryBot.define do
  factory :user do
    family_name { '山田' }
    family_name_reading { 'ヤマダ' }
    first_name              { '太郎' }
    first_name_reading      { 'タロウ' }
    nickname                { 'yama' }
    birthday                { '2000-01-01' }
    email                   { 'aaa@gmail.com' }
    password                { '12345678' }
    password_confirmation   { password }
  end
end
