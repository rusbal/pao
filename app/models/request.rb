class Request < ApplicationRecord
  NATURE_CASE_FILING = "Case Filing"
  NATURE_APPOINTMENT = "Appointment"
  NATURE_CONFERENCE  = "Conference"

  STATUS_OPEN  = "open"
  STATUS_CLOSE = "close"

  belongs_to :client

  scope :open,  -> { where(status: STATUS_OPEN) }
  scope :close, -> { where(status: STATUS_CLOSE) }

  has_many :meetings

  def last_lawyer?(account)
    meetings.count > 0 && account == last_meeting.account
  end

  private

  def last_meeting
    meetings.last
  end
end
