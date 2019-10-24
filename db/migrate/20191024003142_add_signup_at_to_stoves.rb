class AddSignupAtToStoves < ActiveRecord::Migration[5.1]
  def change
    add_column :stoves, :signup_at, :date
  end
end
