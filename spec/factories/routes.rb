FactoryBot.define do
  factory :route do
    user { nil }
    name { "MyText" }
    comment { "MyText" }
    total_distance { "9.99" }
    change_in_elevation { "9.99" }
  end
end
