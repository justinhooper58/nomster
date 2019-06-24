class Place < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :photos

  
  geocoded_by :address
  after_validation :geocode


  mount_uploader :photo, ImageUploader

  
  validates :name, presence: true, length: { minimum: 3, too_long: "3 characters is the minimum allowed"}
  validates :address, presence: true
  validates :description, presence: true
end
