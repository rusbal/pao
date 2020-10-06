class Client < ApplicationRecord
  MALE   = "male"
  FEMALE = "female"

  validates :name, presence: true

  has_many :requests
end
