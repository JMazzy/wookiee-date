class SwCharacter < ActiveRecord::Base

  def self.hair
    all.map { |entry| entry.hair }
  end

  def self.eyes
    all.map { |entry| entry.eyes }
  end

  def self.skin
    all.map { |entry| entry.skin }
  end

  def self.age
    all.map { |entry| entry.age }
  end

  def self.lifespan
    all.map { |entry| entry.lifespan }
  end

  def self.gender
    all.map { |entry| entry.gender }
  end

  def self.name
    all.map { |entry| entry.name }
  end

  def self.language
    all.map { |entry| entry.language }
  end

  def self.height
    all.map { |entry| entry.height }
  end

  def self.mass
    all.map { |entry| entry.mass }
  end

  # :species
  # :species_class
  # :vehicle / :starship combined

end
