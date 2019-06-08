class Place < ApplicationRecord
  belongs_to :user
  geocoded_by :address
  after_validation :geocode

  
  validates :name, presence: true, length: { minimum: 3, too_long: "3 characters is the minimum allowed"}
  validates :address, presence: true
  validates :description, presence: true
end
