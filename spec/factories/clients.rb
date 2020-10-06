FactoryBot.define do
  factory :client do
    name { Faker::Name.name }
    age { rand(18..90) }
    gender { [Client::MALE, Client::FEMALE].sample }
    address { Faker::Address.full_address }
    email { Faker::Internet.email }
    contact_number { Faker::PhoneNumber.cell_phone }
  end
end
