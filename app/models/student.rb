class Student < ApplicationRecord

    scope :order_fifty_student, ->(attribute){order(attribute).limit(49)}

end
