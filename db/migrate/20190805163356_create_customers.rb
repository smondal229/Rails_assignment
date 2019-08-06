class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :name, null: false, unique: true
      t.string :email, null: false, unique: true
    end
  end
end
