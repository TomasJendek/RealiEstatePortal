class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.integer :location_id
      t.references :region

      t.timestamps
    end

    remove_column :locations, :id
    add_index :locations, :location_id, :unique => true
    execute "ALTER TABLE locations ADD PRIMARY KEY (location_id);"
  end
end
