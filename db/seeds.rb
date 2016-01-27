# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'swapi'
swap = Swapi.new

swap.get_people
swap.get_people_attr

10.times do |num|
  hash = swap.people[num+1]
  char = SwCharacter.new(:name => hash['name'], :gender => hash['gender'], :mass => hash['mass'], :hair => hash['hair_color'], :eyes => hash['eye_color'], :skin => hash['skin_color'], :age => hash['birth_year'])
  char.save
end