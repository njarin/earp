FactoryGirl.define do
  factory :user do
    email { Faker::Internet.email }
    name { Faker::Name.name }
    pword = Faker::Internet.password
    password_digest { pword }
    password { pword }
    role { 'staff' }
  end
end
