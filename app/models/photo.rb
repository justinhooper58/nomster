class Photo < ApplicationRecord
  belongs_to :place
end

class Place < ActiveRecord::Base
  mount_uploader :image, ImageUploader
end
