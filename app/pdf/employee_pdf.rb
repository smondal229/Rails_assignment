class EmployeePdf < Prawn::Document
  def initialize(emp)
    super()
    p=record_table(emp)
  end

  def record_table(emp)
    arr=Array.new
    emp_columns=["id","name","email","phone_number"]
    arr.push(emp_columns)
    emp.each do |e|
      arr.push(e.attributes.values_at(*emp_columns).map{|val| val.to_s}) 
    end
    table(arr,:header => true) do
      cells.style(:align => :center, :padding => 5)
      column(0).style(:width => 30)
    end

  end

end