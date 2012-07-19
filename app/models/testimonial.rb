class Testimonial < ActiveRecord::Base
  validates :name, :presence => true
  validates :suburb, :presence => true
  validates :comment, :presence => true

  attr_accessible :name, :suburb, :comment
end