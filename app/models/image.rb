class Image < ApplicationRecord
    has_attached_file :post, styles{large: "600X600>", thumb: "300X300>"}
end