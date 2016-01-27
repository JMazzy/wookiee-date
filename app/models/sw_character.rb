class SwCharacter < ActiveRecord::Base

  HAIR = self.all.map{ |entry| entry.hair }
  EYES = self.all.map{ |entry| entry.eyes }
  SKIN = self.all.map{ |entry| entry.skin }
  AGE = self.all.map{ |entry| entry.age }
  GENDER = self.all.map{ |entry| entry.gender }
  HEIGHT = self.all.map{ |entry| entry.height }
  MASS = self.all.map{ |entry| entry.mass }

end
