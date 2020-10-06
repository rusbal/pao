class Request < ApplicationRecord
  NATURE_CASE_FILING = "Case Filing"
  NATURE_APPOINTMENT = "Appointment"
  NATURE_CONFERENCE  = "Conference"

  STATUS_OPEN  = "open"
  STATUS_CLOSE = "close"

  belongs_to :client
end
