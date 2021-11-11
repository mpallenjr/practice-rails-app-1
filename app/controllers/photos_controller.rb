class PhotosController < ApplicationController
  def index
    all_photos = Photo.all
    render json: all_photos.as_json
  end

  def create
    create_photo = Photo.new(
      
      name: params[:name],
      price: params[:price],
      description: params[:description],
      image_url: params[:image_url]
    
    )
    create_photo.save
    render json: create_photo.as_json 
  end
end
