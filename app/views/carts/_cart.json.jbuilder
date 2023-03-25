json.extract! cart, :id, :cartitem, :product_id, :merchant_id, :created_at, :updated_at
json.url cart_url(cart, format: :json)
