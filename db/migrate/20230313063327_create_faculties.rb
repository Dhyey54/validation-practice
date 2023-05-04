class CreateFaculties < ActiveRecord::Migration[7.0]
  def change
    create_table :faculties do |t|
      t.string :faculty
      t.integer :phone_numer
      t.string :email
      t.date :birthdate
      t.string :designation

      t.timestamps
    end
  end
end
