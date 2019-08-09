class EmployeesController < ApplicationController
  def download
    @employee=Employee.order_fifty_employee(:name)

    respond_to do |format|
      format.html
      format.pdf do
        pdf= EmployeePdf.new(@employee)
        send_data(pdf.render, filename: "employees-#{Time.now}.pdf", type: "application/pdf")
      end
    end
  end


end
