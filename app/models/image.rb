class Image < ApplicationRecord
    validates :img_name, presence: true, null: false
    has_attached_file :post, styles: {thumb: "150X150>"}
    validates_attachment_content_type :post, content_type: /\Aimage\/.*\z/
end