class PhotosController < ApplicationController
  def index
    all_photos = Photo.all
    render json: all_photos.as_json
  end

  def create
    create_photo = Photo.new(
      
      name: "Happy Sun",
      price: 55,
      description: "bask in it's radiance",
      image_url: "https://images.pexels.com/photos/87611/sun-fireball-solar-flare-sunlight-87611.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"
    
    
    )
    create_photo.save
    render json: create_photo.as_json 
  end
end
