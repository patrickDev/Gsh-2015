json.array!(@pimos) do |pimo|
  json.extract! pimo, :id, :area
  json.url pimo_url(pimo, format: :json)
end
