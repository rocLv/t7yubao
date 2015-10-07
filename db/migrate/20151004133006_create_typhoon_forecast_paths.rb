class CreateTyphoonForecastPaths < ActiveRecord::Migration
  def change
    create_table :typhoon_forecast_paths do |t|
      t.integer  :typhoon_id
      t.datetime :start_time
      t.integer  :valid
      t.float    :latitude
      t.float    :longitude
      t.float    :wind
      t.integer :pressure
      t.integer :range_50_knots_of_NE
      t.integer :range_30_knots_NE
      t.integer :range_50_knots_of_SE
      t.integer :range_30_knots_of_SE
      t.integer :range_50_knots_of_SW
      t.integer :range_30_knots_of_NW

      t.timestamps null: false
    end
  end
end
