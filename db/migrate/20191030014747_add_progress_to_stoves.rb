class AddProgressToStoves < ActiveRecord::Migration[5.1]
  def change
    add_column :stoves, :progress, :string
  end
end
