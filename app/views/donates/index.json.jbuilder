json.array!(@donates) do |donate|
  json.extract! donate, :id, :address, :city, :state
  json.url donate_url(donate, format: :json)
end
