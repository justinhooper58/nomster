class PhotosController < ApplicationController
  before_action :authenticate_user!

  def create
    @photo = Place.find(params[:place_id])
    uploader = ImageUploader.new
    uploader.store!(params[:photo])

  end

  def photo_params
    params.require(:photo).permit(:caption)
  end

   private

  
end
