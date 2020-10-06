class Request < ApplicationRecord
  NATURE_CASE_FILING = "Case Filing"
  NATURE_APPOINTMENT = "Appointment"
  NATURE_CONFERENCE  = "Conference"

  STATUS_OPEN  = "open"
  STATUS_CLOSE = "close"

  belongs_to :client

  has_many :meetings

  scope :waiting, -> { }

  scope :x_waiting, -> do
    joins(:meetings)
      .where('meetings.scheduled_at = (SELECT MAX(meetings.scheduled_at) FROM meetings WHERE meetings.request_id = requests.id)')
      .where('meetings.scheduled_at < ?', DateTime.current)
  end

  scope :close,     -> { where(status: STATUS_CLOSE) }
  scope :scheduled, -> { includes(:meetings).where(meetings: { status: Meeting::STATUS_DEFAULT }) }

  def last_lawyer?(account)
    meetings.count > 0 && account == last_meeting.account
  end

  private

  def last_meeting
    meetings.last
  end
end
