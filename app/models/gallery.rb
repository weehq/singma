class Gallery < ActiveRecord::Base
  attr_accessible :active, :created_at, :description, :image, :title, :updated_at
end
