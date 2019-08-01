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
      flash.notice= "Customer record created successfully"
      redirect_to customers_path
    else
      flash.notice= "Please enter record correctly"
      render("new")
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
      flash.notice= "Customer record updated successfully"
      redirect_to customers_path
    else
      flash.notice= "Could not update the record"
      render("edit")
    end
  end

  def destroy
    @customer=Customer.find(params[:id])
    @customer.destroy
    flash.notice= "Customer record deleted successfully"
    redirect_to customers_path
  end

  def search
    @customer_ids=search_keyword
  end

  
  private
    def customer_params
      params.require(:customer).permit(:name,:email)
    end

    def search_keyword
      ids=[]
      @keyword=params[:q].to_s.strip.downcase
      if @keyword==""
        return ids
      end
      Customer.all.each do |customer|
        if customer.name.downcase.include?(@keyword) or customer.email.include?(@keyword)
          ids.push(customer.id)
        end
      end
      print ids
      return ids
    end
end