require File.expand_path('../seed/users', __FILE__)
require File.expand_path('../seed/locations', __FILE__)
require File.expand_path('../seed/testimonials', __FILE__) if Rails.env.development?

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
