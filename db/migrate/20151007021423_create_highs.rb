class CreateHighs < ActiveRecord::Migration
  def change
    create_table :highs do |t|
      t.datetime :timers
      t.integer :station
      t.integer :level
      t.float :height
      t.float :temprature
      t.float :t_td
      t.float :wind_dir
      t.float :wind_speed

      t.timestamps null: false
    end
  end
end
