class EmployeeController < ApplicationController
  def download
    @employee=Employee.order(:name).limit(50)

    respond_to do |format|
      format.html
      format.pdf do
        pdf= EmployeePdf.new(@employee,Employee.column_names)
        send_data pdf.render, filename: "employees-#{Time.now}.pdf", type: 'application/pdf'
      end
    end
  end


#CRUD operation on employee
  def index
    @employee=Employee.all
  end

  def new
    @employee=Employee.new
  end
  def create
    @employee=Employee.new(employee_params)
    if @employee.save
      flash.notice= "Employee record created successfully"
      redirect_to employee_index_path
    else
      flash.notice= "Please try again"
      redirect_to new_employee_path
    end
  end



  def show
    @employee=Employee.find(params[:id])
  end

  def edit
    @employee=Employee.find(params[:id])
  end
  def update
    @employee=Employee.find(params[:id])
    if @employee.update(employee_params)
      flash.notice= "Employee record updated successfully"
      redirect_to employee_index_path
    else
      flash.notice= "Could not update the record"
      redirect_to employee_index_path
    end
  end

  def destroy
    @employee=Employee.find(params[:id])
    @employee.destroy
    flash.notice= "Employee record deleted successfully"
    redirect_to employee_index_path
  end

  def search
    @keyword=params[:q]
  end

  
  private
    def employee_params
      params.require(:employee).permit(:name,:email, :phone_number)
    end

end
