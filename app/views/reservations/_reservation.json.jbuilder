json.extract! reservation, :id, :user_id, :date, :name_trip, :price, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
