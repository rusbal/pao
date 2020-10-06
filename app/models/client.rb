class Client < ApplicationRecord
  MALE   = "male"
  FEMALE = "female"

  validates :name, presence: true
end
