class CustomersController < ApplicationController
    #CRUD operation on customer
  def index
    @customer=Customer.all
  end

  def new
    @customer=Customer.new
  end
  def create
    @customer=Customer.new(customer_params)
    if @customer.save
      redirect_to customers_path, flash: { notice: "Customer record created successfully" }
    else
      flash[:notice] = "Please enter record correctly"
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
      redirect_to customers_path, flash: { notice: "Customer record updated successfully" }
    else
      flash[:notice] = "Could not update the record"
      render action: "edit"
    end
  end

  def destroy
    @customer=Customer.find(params[:id])
    @customer.destroy
    redirect_to(customers_path, flash: { notice: "Customer record deleted successfully" } )
  end

  def search
    @keyword=params[:q].to_s.strip.downcase
    @customers=Customer.search_ignore_case(@keyword)
  end

  
  private
    def customer_params
      params.require(:customer).permit(:name,:email)
    end

end