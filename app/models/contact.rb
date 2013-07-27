class Contact < ActiveRecord::Base
  # Validations
  validates :name, :length => {:minimum => 2}
  validates :postcode, :numericality => true,
                       :length => {:minimum => 4},
                       :format => {
                         :with => /^2.+/,
                         :message => 'must start with 2',
                         :multiline => true
                       }
  validates :email, :presence => true
  validates :phone, :numericality => true,
                    :length => {:minimum => 8}
  validates :prefer_contact, :presence => true
  validates :bathroom_requirements, :presence => true

  attr_accessible :name, :address, :postcode, :phone, :email, :prefer_contact, :bathroom_requirements, :budget, :other_comments
end
