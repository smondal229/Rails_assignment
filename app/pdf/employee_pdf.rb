class EmployeePdf < Prawn::Document
  def initialize(emp,columns)
    super()
    p=record_table(emp,columns)
  end

  def record_table(emp,columns)
    arr=Array.new
    arr.push(columns)
    emp.each do |e|
      arr.push([e.id,e.name,e.email,e.phone_number,e.created_at.to_s,e.updated_at.to_s])
    end
    table arr
  end

end