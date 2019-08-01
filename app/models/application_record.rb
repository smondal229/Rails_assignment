class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  scope :order_fifty, ->(attribute=:id){order(attribute).limit(49)}
end