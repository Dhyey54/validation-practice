class Event < ApplicationRecord
  has_many :enrollments
  has_many :users, through: :enrollments
  belongs_to :user
end
