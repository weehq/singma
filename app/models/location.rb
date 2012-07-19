class Location < ActiveRecord::Base
  attr_accessible :active, :created_at, :postcode, :suburb
end
