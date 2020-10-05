class Account < ApplicationRecord
  ADMIN = "admin"
  LAWYER = "lawyer"

  belongs_to :user

  validates :role, inclusion: { in: [ADMIN, LAWYER] }
  validates :name, presence: true
end
