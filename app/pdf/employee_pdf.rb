class EmployeePdf < Prawn::Document
  def initialize(emp,columns)
    super()
    p=record_table(emp,columns)
  end

  def record_table(emp,columns)
    arr=Array.new
    arr.push(columns)
    emp.each do |e|
      arr.push(e.attributes.values.map{|val| val.to_s}) 
    end
    table(arr,:header => true) do
      cells.style(:align => :center, :padding => 5)
      column(0).style(:width => 30)
    end

  end

end