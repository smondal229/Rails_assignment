class ImagesController < ApplicationController
  def new
    @image = Image.new
  end

  def index
    @image = Image.all
  end

  def create
    @image = Image.new(image_params)
    if @image.save 
      redirect_to(images_path, flash: { notice: "Image has been uploaded successfully" })
    else
      render "new"
    end
  end
  
  private 
    def image_params
      params.require(:image).permit(:img_name, :post)
    end
end
