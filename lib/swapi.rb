# require 'httparty'

# include HTTParty

class Swapi

  attr_reader :people, :species

  def initialize
    @people = {}
    @species = {}
  end

  def get_people_attr
    get_people.each do |key, value|
      @people[key] = {}
      @people[key]['name'] = value['name']
      @people[key]['mass'] = value['mass']
      @people[key]['height'] = value['height']
      @people[key]['hair_color'] = value['hair_color']
      @people[key]['skin_color'] = value['skin_color']
      @people[key]['eye_color'] = value['eye_color']
      @people[key]['birth_year'] = value['birth_year']
      @people[key]['gender'] = value['gender']
      @people[key]['vehicles'] = get_vehicles(value['vehicles']) unless value['vehicles'].empty?
      @people[key]['starships'] = get_starships(value['starships']) unless value['starships'].empty?
      @people[key]['species'] = set_species(value['species'][0]) unless value['species'].empty?
    end
  end

  def get_species_attr
    get_species.each do |key, value|
      @species[key] = {}
      @species[key]['name'] = value['name']
      @species[key]['classification'] = value['classification']
      @species[key]['language'] = value['language']
      @species[key]['lifespan'] = value['average_lifespan']
    end
  end

  def get_vehicles_attr
    get_vehicles.each do |key, value|
      @vehicles[key] = {}
      @vehicles['model'] = value['model']
    end
  end

  def get_starships_attr
    get_starships.each do |key, value|
      @vehicles[key] = {}
      @vehicles['model'] = value['model']
    end
  end

# getting attributes from api calls

  def get_people
    get_people = {}
    idx = 1
    while idx <= 87
      url = HTTParty.get("http://swapi.co/api/people/#{idx}").parsed_response
      get_people[idx] = url unless url['detail'] == "Not found"
      idx +=1
    end
    get_people
  end


  def get_species
    get_species = {}
    idx = 1
    while idx <= 37
      get_species[idx] = HTTParty.get("http://swapi.co/api/species/#{idx}").parsed_response
      idx += 1
    end
    get_species
  end

  def set_species(url)
    @species[url.match(/(\d+)/)[1].to_i]
  end

  def get_vehicles(vehicles_url)
    vehicles = []
    vehicles_url.each do |url|
      vehicles << HTTParty.get("http://swapi.co/api/vehicles/#{url.match(/(\d+)/)}").parsed_response['name']
    end
    vehicles
  end

  def get_starships(starships_url)
    starships = []
    starships_url.each do |url|
      starships << HTTParty.get("http://swapi.co/api/starships/#{url.match(/(\d+)/)}").parsed_response['name']
    end
    starships
  end

  def populate_characters
    get_species
    get_species_attr
    get_people
    get_people_attr
  end



 # TODO refactor the get methods, if possible
  def get_type(type, count)
    get_type = {}
    idx = 1
    while idx < count
      get_type[idx] = HTTParty.get("http://swapi.co/api/#{type}/#{idx}").parsed_response
      idx += 1
    end
    get_type
  end


end
