class PhotosController < ApplicationController
  def index
    all_photos = Photo.all
    render json: all_photos.as_json
  end
end
