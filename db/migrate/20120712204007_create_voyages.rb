class CreateVoyages < ActiveRecord::Migration
  def change
    create_table :voyages do |t|
      t.integer :airpot_from
      t.integer :airport_to
      t.decimal :price, precision: 8, scale: 2
      t.datetime :crash_at
      t.datetime :arriving_at
      t.datetime :day
      t.integer :transfer_count

      t.timestamps
    end
  end
end
