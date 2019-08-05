class ImagesController < ApplicationController
  def new
    @image=Image.new
  end

  def show
    @image=Image.all
  end

  def create
    @image=Image.new(image_params)
    if @image.save 
      redirect_to(images_show_path, flash: { notice: "Image has been uploaded successfully" })
    else
      flash[:error]=@customer.errors.full_messages.to_sentence
      render action: "new"
    end
  end
  
  private 
    def image_params
      params.require(:image).permit(:img_name, :post)
    end
end
