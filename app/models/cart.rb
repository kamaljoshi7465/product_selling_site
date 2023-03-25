class Cart < ApplicationRecord
  belongs_to :product
  belongs_to :merchant
  validates :product_id, :merchant_id, presence: true
end
