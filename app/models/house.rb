class House < ActiveRecord::Base
  attr_accessible :description, :loan, :locality, :name, :owner, :ownership, :prize, :type

  attr_accessible :property_id, :age, :house_area, :field_area, :bathroom, :cellar, :escalator, :internet, :material,
                  :parking, :room, :state, :telephone, :toalette, :tv
end
