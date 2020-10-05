FactoryBot.define do
  factory :account do
    role { ["admin", "lawyer"].sample }
    name { Faker::Name.name }

    association :user
  end
end
