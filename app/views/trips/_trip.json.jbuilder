json.extract! trip, :id, :origin, :destiny, :datetime, :driver_id, :client_id, :rate, :duration, :created_at, :updated_at
json.url trip_url(trip, format: :json)
