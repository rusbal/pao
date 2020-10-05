FactoryBot.define do
  factory :account do
    type { ["admin", "lawyer"].sample }
    name { Faker::Name.name }

    association :user
  end
end
