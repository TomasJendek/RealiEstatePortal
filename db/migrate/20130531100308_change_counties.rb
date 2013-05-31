class ChangeCounties < ActiveRecord::Migration
  def change
    add_column :counties, :county_id, :integer
    remove_column :counties, :id
    add_index :counties, :county_id, :unique => true
    execute "ALTER TABLE counties ADD PRIMARY KEY (county_id);"
  end
end
