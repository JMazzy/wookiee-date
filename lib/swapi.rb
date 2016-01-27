# require 'httparty'

# include HTTParty  
  
class Swapi

  attr_reader :people, :species, :vehicles, :starships

  def initialize
    @people = {}
    @species = {}
    @vehicles = {}
    @starships = {}
  end

  def get_people
    get_people = {}
    idx = 1
    while idx <= 10
      get_people[idx] = HTTParty.get("http://swapi.co/api/people/#{idx}").parsed_response
      idx +=1
    end
    get_people
  end

  def get_people_attr
    get_people.each do |key, value|
      @people[key] = {}
      @people[key]['name'] = value['name']
      @people[key]['mass'] = value['mass']
      @people[key]['hair_color'] = value['hair_color']
      @people[key]['skin_color'] = value['skin_color']
      @people[key]['eye_color'] = value['eye_color']
      @people[key]['birth_year'] = value['birth_year']
      @people[key]['gender'] = value['gender']
    end
  end

  def get_species_attr
    get_species.each do |key, value|
      @species[key] = {}
      @species[key]['name'] = value['name']
      @species[key]['classification'] = value['classification']
      @species[key]['language'] = value['language']
      @species[key]['lifespan'] = value['lifespan']
    end
  end

  def get_species
    get_species = {}
    idx = 1
    while idx < 5
      get_species[idx] = HTTParty.get("http://swapi.co/api/species/#{idx}").parsed_response
      idx += 1
    end
    get_species
  end

  def get_vehicles
    get_vehicles = {}
    idx = 1
    while idx < 39
      get_vehicles[idx] = HTTParty.get("http://swapi.co/api/vehicles/#{idx}").parsed_response
      idx += 1
    end
    get_vehicles
  end

  def get_vehicles
    get_vehicles = {}
    idx = 1
    while idx < 39
      get_vehicles[idx] = HTTParty.get("http://swapi.co/api/vehicles/#{idx}").parsed_response
      idx += 1
    end
    get_vehicles
  end


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

# sw = Swapi.new
# sw.get_species
# sw.get_species_attr
# print sw.species