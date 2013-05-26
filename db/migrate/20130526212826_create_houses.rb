class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.integer :material
      t.integer :state
      t.integer :age
      t.integer :bathroom
      t.boolean :cellar
      t.boolean :internet
      t.boolean :parking
      t.integer :room
      t.boolean :telephone
      t.integer :toalette
      t.boolean :tv
      t.integer :field_area
      t.integer :house_area
      t.boolean :escalator

      t.integer :locality
      t.integer :ownership
      t.integer :type
      t.integer :owner
      t.text :description
      t.boolean :loan
      t.string :name
      t.integer :prize

      t.references :user

      t.timestamps
    end
  end
end
