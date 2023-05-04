class CreateEnrollments < ActiveRecord::Migration[7.0]
  def change
    create_table :enrollments do |t|
      t.boolean :created
      
      t.timestamps
    end
  end
end
