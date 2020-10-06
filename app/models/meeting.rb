class Meeting < ApplicationRecord
  STATUS_ATTENDED                   = "attended"
  STATUS_CANCELLED_BY_CLIENT        = "cancelled_by_client"
  STATUS_CANCELLED_BY_LAWYER        = "cancelled_by_lawyer"
  STATUS_CANCELLED_BY_OTHER_REASONS = "cancelled_by_other_reasons"
  STATUS_CANCELLED_CLIENT_ABSENT    = "cancelled_client_absent"
  STATUS_CANCELLED_LAWYER_ABSENT    = "cancelled_lawyer_absent"

  belongs_to :account
  belongs_to :request
end
