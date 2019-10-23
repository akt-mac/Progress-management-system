class RenameCustomerIdColumnToCustomers < ActiveRecord::Migration[5.1]
  def change
    rename_column :customers, :customer_id, :customer_code
  end
end
