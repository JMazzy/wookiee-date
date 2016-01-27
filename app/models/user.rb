class User < ActiveRecord::Base

  def find_match(characters)
    matches = []
    characters.each do |character|
      match_count = 0
      match_count += 1 if match_hair?(character.hair)
      match_count += 1 if match_eyes?(character.eyes)
      match_count += 1 if match_skin?(character.skin)
      match_count += 1 if match_gender?(character.gender)
      match_count += 1 if match_weight?(character.weight)
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
    self.seeking_gender == gender
  end

  def match_species?(species)
    self.species.include?( species )
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
    if height < short
      true if self.height == "Short"
    elsif height > tall
      true if self.height == "Tall"
    else
      true if self.height == "Average"
    end
    false
  end

  def match_weight?(weight)
    hefty = 100
    light = 50
    if weight < light
      return true if self.weight == "Light"
    elsif weight > hefty
      return true if self.weight == "Hefty"
    else
      return true if self.weight == "Average"
    end
    false
  end

  def match_lifespan?(lifespan)
    cutoff = 120
    if lifespan < cutoff
      return true if self.lifespan == "Die Quick"
    elsif lifespan > cutoff
      return true if self.lifespan == "Live Long"
    else
      return true if self.lifespan == "Average"
    end
    false
  end

end
