class Quote < ActiveRecord::Base
  # Validations
  validates :name, :length => {:minimum => 2}
  validates :email, :presence => true
  validates :phone, :numericality => true, :length => {:minimum => 8}
  validates :postcode, :numericality => true, :length => {:minimum => 4}
  validates :access_difficulty, :presence => true
  validates_date :job_completion, :after => :today

  attr_accessible :access_difficulty, :full_renovation, :ground_floor, :job_completion, :name, :email, :other_renovation, :phone, :postcode
end