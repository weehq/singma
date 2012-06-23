class Quote < ActiveRecord::Base
  attr_accessible :access_difficulty, :created_at, :full_renovation, :ground_floor, :job_completion, :name, :other_renovation, :phone, :postcode
end
