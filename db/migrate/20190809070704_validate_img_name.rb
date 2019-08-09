class ValidateImgName < ActiveRecord::Migration[5.2]
  def change
    change_column :images, :img_name, :string, null: false
  end
end
