class ValidateCustomers < ActiveRecord::Migration[5.2]
  def change
    change_column :customers, :name, :string, null: false
    change_column :customers, :email, :string, null: false
  end
end
