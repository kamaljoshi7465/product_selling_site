class Product < ApplicationRecord
    belongs_to :category
    has_many :productimages
    mount_uploader :image, ImageUploader
    enum status: { draft: 'draft', active: 'active', inactive: 'inactive' }, _default: :active
    validates :name, :desc, :price, :status, presence: true
end
