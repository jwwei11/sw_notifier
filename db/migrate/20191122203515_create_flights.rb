class CreateFlights < ActiveRecord::Migration[5.1]
  def change
    create_table :flights do |t|
      t.datetime :flight_time
      t.integer :user_id
      t.datetime :departs_at
      t.string :description

      t.timestamps
    end
  end
end
