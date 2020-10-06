class Account < ApplicationRecord
  ADMIN = "admin"
  LAWYER = "lawyer"

  belongs_to :user

  validates :role, inclusion: { in: [ADMIN, LAWYER] }
  validates :name, presence: true

  scope :admins,  -> { where(role: ADMIN) }
  scope :lawyers, -> { where(role: LAWYER) }

  def todays_meeting_count
    100
  end

  def future_meeting_count
    200
  end

  def can_close?
    admin?
  end

  def admin?
    role == Account::ADMIN
  end

  def lawyer?
    role == Account::LAWYER
  end
end
