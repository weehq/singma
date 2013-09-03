class Gallery < ActiveRecord::Base
  belongs_to :customer

  attr_accessible :active, :created_at, :description, :image, :title, :updated_at, :customer_id
end
