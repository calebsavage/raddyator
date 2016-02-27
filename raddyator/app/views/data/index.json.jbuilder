json.array!(@data) do |datum|
  json.extract! datum, :id, :temp, :sensor_id
  json.url datum_url(datum, format: :json)
end
