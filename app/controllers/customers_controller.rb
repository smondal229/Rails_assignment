class CustomersController < ApplicationController
    #CRUD operation on customer
  before_action :find_param_id,  only: [:show, :edit, :destroy, :update]
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
  end

  def edit
  end
  def update
    if @customer.update(customer_params)
      redirect_to customers_path, flash: { success: "Customer record updated successfully" }
    else
      flash[:error]=@customer.errors.full_messages.to_sentence
      render action: "edit"
    end
  end

  def destroy
    @customer.destroy
    redirect_to(customers_path, flash: { success: "Customer \"#{@customer.name}\" deleted successfully" } )
  end
  
  private
    def customer_params
      params.require(:customer).permit(:name,:email)
    end

    def find_param_id
      @customer=Customer.find(params[:id])
    end
end