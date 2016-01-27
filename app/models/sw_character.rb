class SwCharacter < ActiveRecord::Base

  HAIR = self.all.map{ |entry| entry.hair }.uniq
  EYES = self.all.map{ |entry| entry.eyes }.uniq
  SKIN = self.all.map{ |entry| entry.skin }.uniq
  AGE = self.all.map{ |entry| entry.age }.uniq
  GENDER = self.all.map{ |entry| entry.gender }.uniq
  HEIGHT = self.all.map{ |entry| entry.height }.uniq
  MASS = self.all.map{ |entry| entry.mass }.uniq
  VEHICLE = self.all.map{ |entry| entry.vehicle}.compact.flatten.uniq.flatten


end
