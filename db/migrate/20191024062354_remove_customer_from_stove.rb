class RemoveCustomerFromStove < ActiveRecord::Migration[5.1]
  def change
    remove_reference :stoves, :customer, foreign_key: true
  end
end
