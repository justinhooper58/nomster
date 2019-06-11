class PhotosController < ApplicationController
  before_action :authenticate_user!

  def create
    @photo = Photo.find(params[:place_id])
    @place.photos.create(photo_params)
  end

   private

  def comment_params
    params.require(:caption)
  end
end
