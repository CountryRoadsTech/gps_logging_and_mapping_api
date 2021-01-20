json.extract! point, :id, :user_id, :route_id, :name, :comment, :latitude, :longitude, :accuracy, :altitude, :speed, :heading, :recorded_at, :point_of_interest, :created_at, :updated_at
json.url point_url(point, format: :json)
