# index.json.jbuilder

json.array! @spots do |spot|
  json.id spot.id
  json.title spot.title
  json.description spot.description
  json.price spot.price

  # Include spot images
  json.images do
    json.array! spot.spot_images do |image|
      json.url url_for(image.file)
      json.main image.main
    end
  end

  # Include spot reviews
  json.reviews do
    json.array! spot.spot_reviews do |review|
      json.id review.id
      json.content review.content
    end
  end
end
