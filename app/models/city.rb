class City < ApplicationRecord
  validates :name, :country,  presence: true
  validates :name, length: {minimum: 10}

  has_many :houses
end
