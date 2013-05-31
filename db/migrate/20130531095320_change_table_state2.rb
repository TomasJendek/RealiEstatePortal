class ChangeTableState2 < ActiveRecord::Migration
  def change
    remove_column :states, :id
    add_index :states, :state_id, :unique => true
    execute "ALTER TABLE states ADD PRIMARY KEY (state_id);"
  end
end
