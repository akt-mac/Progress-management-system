class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :customer_id
      t.string :name
      t.string :email
      t.string :phone_number
      t.string :mobile_number
      t.string :zip
      t.string :address

      t.timestamps
    end
  end
end
