class DateValidator < ActiveModel::Validator
  def validate(record)
    if record.birthdate.present? && record.birthdate > Date.today
      record.errors.add :birthdate, "Enter Proper Date of birth"
    end
  end
end

class Student < ApplicationRecord
  validates :first_name, :last_name, presence: { message: "%{attribute} must be given please" }
  validates :department, inclusion: { in: %w(CE IT), case_insensitive: true, message: "Department can't be %{value}" }
  validates :terms_of_usage, acceptance: { message: 'Terms of usage must be accepted to continue' }
  validates_with DateValidator
end
