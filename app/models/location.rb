class Location < ActiveRecord::Base
  self.primary_key = :location_id

  attr_accessible :name, :location_id

  belongs_to :region

  validates_uniqueness_of :location_id

end
