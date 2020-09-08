FactoryBot.define do
  factory :user do
    # Faker::Config.locale = 'ja'
    # family_name {Faker::Name.first_name}
    # family_name_reading {Faker::Name.first_name}
    # first_name {Faker::Name.last_name}
    # first_name_reading {Faker::Name.last_name}
    # nickname {Faker::Name.last_name}
    # birthday {Faker::Date.in_date_period(month: 2)}
    # email {Faker::Internet.free_email}
    # password {Faker::Internet.password(min_length: 6)}
    # password_confirmation {password}


    family_name { '山田' }
    family_name_reading { 'ヤマダ' }
    first_name              { '太郎' }
    first_name_reading      { 'タロウ' }
    nickname                { 'yamada' }
    birthday                { '2000-01-01' }
    email                   { 'yamada@example.com' }
    password                { 'aa3456' }
    password_confirmation   { password }
  end
end
