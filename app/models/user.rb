class User < ActiveRecord::Base

    def find_match(characters)
      matches = []
      characters.each do |character|
        match_count = 0
        match_count += 1 if match_hair?
        match_count += 1 if match_eyes?
        match_count += 1 if match_skin?
      end
      matches
    end

    def match_hair?(character)
      self.hair == character.hair
    end

    def match_eyes?(character)
      self.eyes == character.eyes
    end

end
