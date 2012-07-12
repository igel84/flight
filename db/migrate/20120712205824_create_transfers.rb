class CreateTransfers < ActiveRecord::Migration
  def change
    create_table :transfers do |t|
      t.integer :airport_id
      t.datetime :day
      t.integer :voyage_id
      t.datetime :crash_at
      t.datetime :arriving_at

      t.timestamps
    end
  end
end