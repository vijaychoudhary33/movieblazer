FactoryBot.define do
  factory :rent do
    user { nil }
    movie { nil }
    Rent_Hour { "2023-07-21 15:35:43" }
    amount { 1.5 }
    date { "2023-07-21" }
  end
end
