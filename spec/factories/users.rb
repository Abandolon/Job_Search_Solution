FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { "aA123456" }
  end
end
