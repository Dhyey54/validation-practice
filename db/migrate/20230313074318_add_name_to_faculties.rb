class AddNameToFaculties < ActiveRecord::Migration[7.0]
  def change
    add_column :faculties, :first_name, :string
    add_column :faculties, :last_name, :string
  end
end
