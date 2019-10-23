class AddSummaryToStoves < ActiveRecord::Migration[5.1]
  def change
    add_column :stoves, :summary_1, :string
    add_column :stoves, :summary_2, :string
  end
end
