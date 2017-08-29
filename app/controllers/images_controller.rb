class ImagesController < ApplicationController
  def new
    @image = Image.new
  end
  def create
    @image = Image.new(image_params)
    if @image.save
      flash[:success] = "Image Uploaded"
      redirect_to root_path
    else
      render 'form'
    end
  end

  private
  def image_params
    params.require(:image).permit(:description,:image)
  end



end
