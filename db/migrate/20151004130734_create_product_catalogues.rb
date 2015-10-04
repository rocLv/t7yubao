class CreateProductCatalogues < ActiveRecord::Migration
  def change
    create_table :product_catalogues do |t|
      t.integer :model_id
      t.string :catalogue

      t.timestamps null: false
    end
  end
end
