class Image < ApplicationRecord
  validates :img_name, presence: true
  has_attached_file :post, styles: {thumb: "150X150>"}

  validates_attachment_content_type :post, content_type: /\Aimage\/.*\z/
  validates_attachment_presence :post
end