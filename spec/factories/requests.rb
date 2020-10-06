FactoryBot.define do
  factory :request do
    nature { [Request::NATURE_CASE_FILING, Request::NATURE_APPOINTMENT, Request::NATURE_CONFERENCE].sample }
    status { [Request::STATUS_OPEN, Request::STATUS_CLOSE].sample }

    association :client
  end
end
