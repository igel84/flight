class CreateAirports < ActiveRecord::Migration
  def change
    create_table :airports do |t|
      t.string :name, limit: 50
      t.integer :city_id

      t.timestamps
    end
  end
end
