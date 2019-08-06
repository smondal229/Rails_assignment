class EmployeePdf < Prawn::Document
  def initialize(emp)
    super()
    p=record_table(emp)
  end

  def record_table(emp)
    arr=Array.new
    emp_columns=["ID","Name","E-Mail","Phone Number"]
    arr.push(emp_columns)
    emp.each do |e|
      arr.push(e.attributes.values_at("id","name","email","phone_number").map{|val| val.to_s}) 
    end
    table(arr,header: true) do |table|
      table.row(0).font_style= :bold
      table.cells.style(align: :center, padding: 5)
      table.column(0).style(width: 40)
    end

  end

end