FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { 'password@123' }
  end
end

