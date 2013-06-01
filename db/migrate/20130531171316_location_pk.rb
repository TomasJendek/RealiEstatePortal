class LocationPk < ActiveRecord::Migration
  def change
    change_column :locations, :location_id, :integer, :options => 'PRIMARY KEY'
  end
end
