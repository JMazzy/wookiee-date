class SwCharacter < ActiveRecord::Base

  def self.hair
    all.map { |entry| entry.hair }
  end

end
