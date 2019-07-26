class ImageController < ApplicationController
  def new
    @image=Image.new
  end

  def show
    @image= Image.all
  end

  def create
    @image=Image.new(image_params)
    if @image.save
      flash.now.notice="Image has been uploaded successfully"
      redirect_to image_show_path
    else
      flash.now.notice="Please try again"
      redirect_to image_new_path
    end
  end
  private 
    def image_params
      params.require(:image).permit(:img_name, :post)
    end
end
