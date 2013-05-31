class CreateCounties < ActiveRecord::Migration
  def change
    create_table :counties do |t|
      t.string :name
      t.references :state

      t.timestamps
    end
    add_index :counties, :state_id
  end
end
