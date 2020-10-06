FactoryBot.define do
  factory :meeting do
    scheduled_at { DateTime.current + rand(1..30).days.sample }
    # scheduled_at { [DateTime.current - 1.day,
    #                 DateTime.current + rand(1..30).days].sample }
    status { Meeting::STATUS_DEFAULT }
    # status { [Meeting::STATUS_DEFAULT, Meeting::STATUS_DEFAULT, Meeting::STATUS_DEFAULT,
    #           Meeting::STATUS_ATTENDED,
    #           Meeting::STATUS_CANCELLED_BY_CLIENT,
    #           Meeting::STATUS_CANCELLED_BY_LAWYER,
    #           Meeting::STATUS_CANCELLED_BY_OTHER_REASONS,
    #           Meeting::STATUS_CANCELLED_CLIENT_ABSENT,
    #           Meeting::STATUS_CANCELLED_LAWYER_ABSENT].sample }

    association :account
    association :request
  end
end
