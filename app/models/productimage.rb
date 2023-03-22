class Productimage < ApplicationRecord
  belongs_to :product
  mount_uploader :productimage, ImageUploader
end
