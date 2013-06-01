class AddColumnToApartments < ActiveRecord::Migration
  def change
    add_column :apartments, :state_id, :integer
  end
end
