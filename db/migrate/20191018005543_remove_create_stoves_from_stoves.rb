class RemoveCreateStovesFromStoves < ActiveRecord::Migration[5.1]
  def change
    remove_column :stoves, :name, :string
    remove_column :stoves, :email, :string
    remove_column :stoves, :phone_number, :string
    remove_column :stoves, :cell_phone_number, :string
    remove_column :stoves, :address, :string
  end
end
