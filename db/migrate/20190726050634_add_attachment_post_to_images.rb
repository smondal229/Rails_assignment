class AddAttachmentPostToImages < ActiveRecord::Migration[5.2]
  def self.up
    change_table :images do |t|
      t.attachment :post
    end
  end

  def self.down
    remove_attachment :images, :post
  end
end
