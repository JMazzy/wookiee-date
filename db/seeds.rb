require 'swapi'
swap = Swapi.new
swap.get_species
swap.get_species_attr
swap.get_people
swap.get_people_attr
swap.people.each do |key, value|
  char = SwCharacter.new(:name => value['name'], :gender => value['gender'], :mass => value['mass'], :hair => value['hair_color'], :eyes => value['eye_color'], :skin => value['skin_color'], :age => value['birth_year'], :vehicle => value['vehicles'], :height => value['height'], :starship => value['starships'], :species => value['species']['name'], :species_class => value['species']['classification'], :language => value['species']['language'], :lifespan => value['species']['lifespan'])
  char.save
end
