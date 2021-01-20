json.extract! route, :id, :user_id, :name, :comment, :total_distance, :change_in_elevation, :created_at, :updated_at
json.url route_url(route, format: :json)
