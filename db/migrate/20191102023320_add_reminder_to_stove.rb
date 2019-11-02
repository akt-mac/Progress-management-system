class AddReminderToStove < ActiveRecord::Migration[5.1]
  def change
    add_column :stoves, :reminder, :string
  end
end
