class User < ApplicationRecord
  def self.to_csv
    CSV.generate do |csv|
      csv << User.column_names
      all.each do |user|
        csv<< user.attributes.values_at(*User.column_names)
      end
    end
  end
end
