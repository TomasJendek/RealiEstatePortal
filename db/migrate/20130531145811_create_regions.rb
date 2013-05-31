class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.string :name
      t.integer :region_id
      t.references :county

      t.timestamps
    end
    remove_column :regions, :id
    add_index :regions, :region_id, :unique => true
    execute "ALTER TABLE regions ADD PRIMARY KEY (region_id);"
  end
end
