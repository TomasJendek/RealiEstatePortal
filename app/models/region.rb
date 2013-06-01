class Region < ActiveRecord::Base
  belongs_to :county
  has_many :locations

  attr_accessible :name, :region_id
end
