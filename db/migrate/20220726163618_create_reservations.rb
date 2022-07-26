class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.date :start_date
      t.integer :number_days
      t.decimal :cost

      t.timestamps
    end
  end
end
