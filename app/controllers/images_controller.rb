class ImagesController < ApplicationController
  def new
    @image=Image.new
  end

  def show
  end

  def create
    @image=Image.new(image_params)
    if @image.save
      flash.now.notice="Image has been uploaded successfully"
      redirect_to images_show_path
    else
      flash.now.notice="Please insert image correctly"
      render("new")
    end
  end
  private 
    def image_params
      params.require(:image).permit(:img_name, :post)
    end
end
