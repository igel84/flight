class CreateVoyages < ActiveRecord::Migration
  def change
    create_table :voyages do |t|
      t.integer :airport_from_id
      t.integer :airport_to_id
      t.decimal :price, precision: 8, scale: 2
      t.datetime :crash_at
      t.datetime :arriving_at
      t.time :day
      t.integer :transfer_count

      t.timestamps
    end
  end
end
