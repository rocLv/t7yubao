class CreateForecastModels < ActiveRecord::Migration
  def change
    create_table :forecast_models do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
