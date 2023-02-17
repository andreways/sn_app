json.result do
  json.extract! @spot, :id, :title, :description, :price
  json.images @spot.spot_images do |image|
    json.extract! image, :id, :file_url, :main
  end
end
