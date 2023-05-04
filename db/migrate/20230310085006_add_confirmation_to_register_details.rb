class AddConfirmationToRegisterDetails < ActiveRecord::Migration[7.0]
  def change
    add_column :register_details, :confirmation, :text, array: true, default: []
  end
end
