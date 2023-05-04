class RemoveFacultyFromFaculties < ActiveRecord::Migration[7.0]
  def change
    remove_column :faculties, :faculty, :string
  end
end
