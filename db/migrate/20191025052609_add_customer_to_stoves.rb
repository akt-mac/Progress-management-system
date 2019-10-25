class AddCustomerToStoves < ActiveRecord::Migration[5.1]
  def change
    add_column :stoves, :customer_name, :string
    add_column :stoves, :phone_number, :string
    add_column :stoves, :mobile_number, :string
    add_column :stoves, :address, :string
  end
end
