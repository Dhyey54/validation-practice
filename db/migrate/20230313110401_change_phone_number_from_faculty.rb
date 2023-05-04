class ChangePhoneNumberFromFaculty < ActiveRecord::Migration[7.0]
  def change
    rename_column :faculties, :phone_numer, :phone_number

    reversible do |dir|
      change_table :faculties do |t|
        dir.up   { t.change :phone_number, :string }
        dir.down { t.change :phone_number, :integer }
      end
    end
  end
end
