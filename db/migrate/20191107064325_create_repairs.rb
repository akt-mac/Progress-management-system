class CreateRepairs < ActiveRecord::Migration[5.1]
  def change
    create_table :repairs do |t|
      t.date :signup_at
      t.string :customer_name
      t.string :phone_number
      t.string :mobile_number
      t.string :address
      t.string :progress
      t.string :reminder
      t.string :note
      t.string :summary_1
      t.string :summary_2

      t.timestamps
    end
  end
end
