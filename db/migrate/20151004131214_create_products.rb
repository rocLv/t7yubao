class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :procut_catalogue_id
      t.string :,element,
      t.datetime, :start_date
      t.integer, :valid
      t.string :path

      t.timestamps null: false
    end
  end
end
