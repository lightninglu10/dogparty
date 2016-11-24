# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email


%w(Judy Steve Gabby Daniel Enrique).each do |name|
  Owner.create name: name, email: name+"@dogparty.com", password: 'dogsrule'
end


%w(Sat1-3 Sat3-5 Sat5-7).each do |name|
  Party.create name: name
end