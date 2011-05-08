class Rsvp < ActiveRecord::Base
  LEVELS_OF_PARTICIPATION = ["attend the ceremony", "attend the afternoon potluck", "attend both"].freeze
  validates :names, :attending, :level_of_participation, :presence => true
end
