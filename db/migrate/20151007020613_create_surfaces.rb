class CreateSurfaces < ActiveRecord::Migration
  def change
    create_table :surfaces do |t|
      t.integer :station
      t.float   :latitude
      t.float   :longitude
      t.float   :height
      t.integer :rank
      t.integer :sum_of_cloud
      t.integer :wind_dir
      t.integer :wind_speed
      t.integer :pressure
      t.integer :pressure_change_3h
      t.integer :past_weather_1
      t.integer :past_weather_2
      t.integer :precipitation
      t.integer :status_of_low_cloud
      t.integer :amount_of_low_cloud
      t.integer :height_of_low_cloud
      t.integer :dew_poin
      t.integer :visibility
      t.integer :weather
      t.integer :t
      t.integer :status_of_mid_cloud
      t.integer :status_of_high_cloud
      t.integer :temprature_change_24h
      t.integer :pressure_change_24h

      t.timestamps null: false
    end
  end
end
