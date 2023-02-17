json.extract! @spot, :id, :title, :description, :price

json.images do
  json.array! @spot.images do |image|
    json.extract! image, :id, :file_url, :main
  end
end

json.reviews do
  json.array! @spot.reviews do |review|
    json.extract! review, :id, :content
  end
end
