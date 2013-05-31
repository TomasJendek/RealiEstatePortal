class State < ActiveRecord::Base
  self.primary_key = :state_id

  attr_accessible :name, :state_id
end
