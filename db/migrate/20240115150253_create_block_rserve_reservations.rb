class CreateBlockRserveReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :block_rserve_reservations do |t|
      t.string :start_point
      t.string :end_point
      t.string :destination, array: true

      t.timestamps
    end
  end
end
