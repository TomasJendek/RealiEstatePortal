class Apartment < ActiveRecord::Base
  attr_accessible :description, :loan, :locality, :name, :owner, :ownership, :prize, :type

  attr_accessible :property_id, :age, :area, :bathroom, :cellar, :escalator, :internet, :loft, :material, :mezonet,
                  :parking, :room, :state, :telephone, :toalette, :tv


  belongs_to :user
end
