class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :user_email
      t.string :phone_number
      t.timestamps
    end
  end
end
