class Product < ApplicationRecord
    belongs_to :category
    has_many :productimages
    has_many :carts
    mount_uploader :image, ImageUploader
    enum :status, { 'Draft': 'Draft', 'active': 'active', 'inactive': 'inactive' }, _default: :'Draft'
    validates :name, :desc, :price, :status, presence: true
end
