class RegisterDetail < ApplicationRecord
  validates :email, confirmation: true
  validates :email_confirmation, presence: true
end
