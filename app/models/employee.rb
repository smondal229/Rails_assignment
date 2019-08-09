class Employee < ApplicationRecord

    scope :order_fifty_employee, ->(attribute){order(attribute).limit(49)}
    
end
