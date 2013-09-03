class Customer < ActiveRecord::Base
  has_many :galleries
  
  attr_accessible :first_name, :last_name, :suburb
end
