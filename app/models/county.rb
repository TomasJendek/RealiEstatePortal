class County < ActiveRecord::Base
  self.primary_key = :county_id

  belongs_to :state

  has_many :regions

  attr_accessible :name, :county_id

  validates_uniqueness_of :county_id
end
