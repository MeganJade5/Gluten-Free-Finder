json.extract! post, :id, :restaurant_name, :street_number, :street_name, :suburb, :postcode, :description, :cuisine_id, :food_prep_id, :user_id, :live_status, :created_at, :updated_at
json.url post_url(post, format: :json)
json.description post.description.to_s
