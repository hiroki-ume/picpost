class ImagesController < ApplicationController
  def new
    @image = Image.new
  end
  def create
      @image = Image.new(image_params)
      @image.save
      redirect_to images_path
  end
  def index
    @images = Image.all.reverse_order
  end

  def show
  end

  def edit
  end
  private
  def image_params
    params.require(:image).permit(:title, :image, :caption)
  end

end
