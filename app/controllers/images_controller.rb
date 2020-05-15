class ImagesController < ApplicationController

  def index
    @images = Image.all
  end

  def new
    @image = Image.new
  end

  def create
    Image.create(photo_params)
    redirect_to images_path
  end

  private
  def photo_params
    params.require(:image).permit(:image)
  end
end
