class Region < ActiveRecord::Base
  belongs_to :county

  attr_accessible :name, :region_id
end
