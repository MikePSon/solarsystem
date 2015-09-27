json.array!(@orbiters) do |orbiter|
  json.extract! orbiter, :id, :name, :orbit_distance, :orbit_speed, :diameter, :mass
  json.url orbiter_url(orbiter, format: :json)
end
