class CreateBlockSeatsSeats < ActiveRecord::Migration[7.0]
  def change
    create_table :block_seats_seats do |t|
      t.integer :assignment, array: true
      t.integer :reserved, array: true
      t.integer :total_seats, array: true

      t.timestamps
    end
  end
end
