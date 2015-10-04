class CreateForecasts < ActiveRecord::Migration
  def change
    create_table :forecasts do |t|
      t.integer,start_date :city_id
      t.string :visibility_unit

      t.timestamps null: false
    end
  end
end
