class SwCharacter < ActiveRecord::Base

 HAIR = self.all.map{ |entry| entry.hair }
  # def self.hair
  #   self.all.map { |entry| entry.hair }
  # end

  # def self.eyes
  #   self.all.map { |entry| entry.eyes }
  # end

  # def self.skin
  #   self.all.map { |entry| entry.skin }
  # end

  # def self.age
  #   self.all.map { |entry| entry.age }
  # end

  # # def self.lifespan
  # #   self.all.map { |entry| entry.lifespan }
  # # end

  # def self.gender
  #   self.all.map { |entry| entry.gender }
  # end

  # def self.name
  #   self.all.map { |entry| entry.name }
  # end

  # def self.language
  #   self.all.map { |entry| entry.language }
  # end

  # def self.height
  #   self.all.map { |entry| entry.height }
  # end

  # def self.mass
  #   self.all.map { |entry| entry.mass }
  # end

  # t.string :species
  # t.string :species_class
  # t.string :vehicle / :starship

end
