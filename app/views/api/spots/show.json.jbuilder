json.extract! @spot, :id, :title, :description, :price

json.images @spot.images do |image|
  json.id image.id
  json.main image.main
  json.url url_for(image)
end

json.reviews @spot.reviews do |review|
  json.id review.id
  json.content review.content
end
