class Account < ApplicationRecord
  ADMIN = "admin"
  LAWYER = "lawyer"
  LIMIT_AGE = 30

  belongs_to :user

  validates :type, inclusion: { in: [ADMIN, LAWYER] }
  validates :name, presence: true
end
