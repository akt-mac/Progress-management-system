class CreateStoves < ActiveRecord::Migration[5.1]
  def change
    create_table :stoves do |t|
      t.string :name
      t.string :email
      t.string :phone_number
      t.string :cell_phone_number
      t.string :address
      t.string :note

      t.timestamps
    end
  end
end
