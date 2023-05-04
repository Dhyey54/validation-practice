class DateValidator < ActiveModel::Validator
  def validate(record)
    if record.birthdate.present? && record.birthdate > Date.today
      record.errors.add :birthdate, "Enter Proper Date of birth"
    end
  end
end

class Faculty < ApplicationRecord
  validates :first_name, :last_name, presence: { message: "%{attribute} must be given please" }
  validates :email, presence: true, uniqueness: true
  
  validates_with DateValidator
  
  with_options presence: true do
    validates :phone_number, numericality: { only_integer: true }
    validates :phone_number, length: { is: 10 }
  end

  with_options presence: true do
    validates :designation, exclusion: { in: ["HOD", "Sr. Prof."], message: "HOD or Sr. Prof. as value is not allowed" }
    validates :designation, inclusion: { in: ["Ass. Prof.", "Prof."], message: "%{value} for %{attribute} is not allowed. Designation can only be Ass. Prof. or Prof." }
  end
end
