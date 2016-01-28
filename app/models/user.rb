class User < ActiveRecord::Base

  def find_match(characters)
    matches = []
    characters.each do |character|
      match_count = 0
      match_count += 1 if match_hair?(character.hair)
      match_count += 1 if match_eyes?(character.eyes)
      match_count += 1 if match_skin?(character.skin)
      match_count += 1 if match_gender?(character.gender)
      match_count += 1 if match_weight?(character.mass)
      match_count += 1 if match_height?(character.height)
      match_count += 1 if match_species?(character.species)
      match_count += 1 if match_species_class?(character.species_class)

      matches << [ character.name, match_count]
    end
    matches
  end

  def match_hair?(hair)
    self.hair.include?( hair )
  end

  def match_eyes?(eyes)
    self.eyes.include?( eyes )
  end

  def match_skin?(skin)
    self.skin.include?( skin )
  end

  def match_gender?(gender)
    self.seeking_gender == gender if gender
  end

  def match_species?(species)
    if species
      self.species.include?( species )
    end
    false
  end

  def match_species_class?(species_class)
    self.species_class.include?( species_class )
  end

  def match_vehicle?(vehicle)
    vehicle.each do |v|
      return true if self.vehicle.include?( v )
    end
  end

  def match_starship?(starship)
    starship.each do |ss|
      return true if self.starship.include?( ss )
    end
  end

  def match_language?(language)
    self.language.include?( language )
  end

  def match_height?(height)
    short = 100
    tall = 185
    if height
      if height < short
        true if self.height == "Short"
      elsif height > tall
        true if self.height == "Tall"
      else
        true if self.height == "Average"
      end
    end
    false
  end

  def match_weight?(mass)
    hefty = 100
    light = 50
    if mass
      if mass < light
        return true if self.mass == "Light"
      elsif mass > hefty
        return true if self.mass == "Hefty"
      else
        return true if self.mass == "Average"
      end
    end
    false
  end

  def match_lifespan?(lifespan)
    cutoff = 120
    if lifespan
      if lifespan < cutoff
        return true if self.lifespan == "Die Quick" && lifespan
      elsif lifespan > cutoff
        return true if self.lifespan == "Live Long" && lifespan
      else
        return true if self.lifespan == "Average" && lifespan
      end
    end
    false
  end

end
