class CreateTyphoons < ActiveRecord::Migration
  def change
    create_table :typhoons do |t|
      t.string  :cn_name
      t.string  :en_name
      t.integer :cn_id
      t.integer :international_id

      t.timestamps null: false
    end
  end
end
