class CustomersController < ApplicationController
    #CRUD operation on customer
  def index
    if params[:q].present?
      @keyword=params[:q].to_s.strip.downcase
      @customer=Customer.search_ignore_case(@keyword)
    else
      @customer=Customer.all
    end
  end

  def new
    @customer=Customer.new
  end
  def create
    @customer=Customer.new(customer_params)
    if @customer.save
      redirect_to customers_path, flash: { success: "Customer record created successfully" }
    else
      flash[:error]=@customer.errors.full_messages.to_sentence
      render action: "new"
    end
  end



  def show
    @customer=Customer.find(params[:id])
  end

  def edit
    @customer=Customer.find(params[:id])
  end
  def update
    @customer=Customer.find(params[:id])
    if @customer.update(customer_params)
      redirect_to customers_path, flash: { success: "Customer record updated successfully" }
    else
      flash[:error]=@customer.errors.full_messages.to_sentence
      puts(@customer.errors.full_messages.to_sentence)
      render action: "edit"
    end
  end

  def destroy
    @customer=Customer.find(params[:id])
    @customer.destroy
    redirect_to(customers_path, flash: { notice: "Customer record deleted successfully" } )
  end
  
  private
    def customer_params
      params.require(:customer).permit(:name,:email)
    end

end