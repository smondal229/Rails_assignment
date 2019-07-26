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

  def index
  end
  
  def new
  end

  def show
  end

  def update
  end

end
