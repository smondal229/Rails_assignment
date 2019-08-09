class Customer < ApplicationRecord
    before_validation {self.name = self.name.to_s.titlecase }
    validates :name, presence: true, uniqueness: true

    EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,4})\z/i
    validates :email, presence: true, uniqueness: true, format: { with: EMAIL_REGEX }
    before_validation { self.email = self.email.to_s.downcase }

    scope :search_ignore_case, ->(keyword){ where("lower(name) like ? || email like ?","%#{ keyword }%","%#{ keyword }%") }

end