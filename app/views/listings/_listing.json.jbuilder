json.extract! listing, :id, :address, :bedrooms, :bathrooms, :area, :price, :user_id, :created_at, :updated_at
json.url listing_url(listing, format: :json)