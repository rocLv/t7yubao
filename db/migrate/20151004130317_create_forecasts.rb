class CreateForecasts < ActiveRecord::Migration
  def change
    create_table :forecasts do |t|
      t.integer  :city_id
      t.datetime :start_date
      t.string   :weather
      t.string   :wind_dir
      t.string   :wind_speed
      t.integer  :t_max
      t.integer  :t_min
      t.integer  :visibility
      t.string   :visibility_unit

      t.integer  :sunglass_index_id
      t.integer  :clothes_index_id
      t.integer  :travel_index_id
      t.integer  :sport_index_id
      t.integer  :makeup_index_id
      t.integer  :cold_index_id
      t.integer  :uv_index_id
      t.integer  :confort_index_id

      t.timestamps null: false
    end
  end
end
