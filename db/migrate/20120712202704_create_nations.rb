class CreateNations < ActiveRecord::Migration
  def change
    create_table :nations do |t|
      t.string :name, limit: 50
      
      t.timestamps
    end
  end
end
