class AddContactedToRepair < ActiveRecord::Migration[5.1]
  def change
    add_column :repairs, :contacted, :string
  end
end
