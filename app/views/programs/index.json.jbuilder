json.array!(@programs) do |program|
  json.extract! program, :id, :day, :am_on, :am_off, :pm_on, :pm_off
  json.url program_url(program, format: :json)
end
