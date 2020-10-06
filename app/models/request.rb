class Request < ApplicationRecord
  NATURE_CASE_FILING = "Case Filing"
  NATURE_APPOINTMENT = "Appointment"
  NATURE_CONFERENCE  = "Conference"

  STATUS_OPEN  = "open"
  STATUS_CLOSE = "close"

  belongs_to :client

  has_many :meetings
  # has_many :with_scheduled_meetings, -> { scheduled }, class_name: 'Meeting'

  scope :open,      -> {
    where(status: STATUS_OPEN)
      .includes(:meetings)
      .where.not(meetings: { status: Meeting::STATUS_DEFAULT })
  }
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
