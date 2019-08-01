class Customer < ApplicationRecord
    validates :name, presence: true, null: false, uniqueness: true

    EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
    validates :email, presence: true, null: false, uniqueness: true, format: { with: EMAIL_REGEX }
    before_save { self.email=self.email.to_s.downcase }

end