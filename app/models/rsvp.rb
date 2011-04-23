class Rsvp < ActiveRecord::Base
  validates :names, :attending, :level_of_participation, :presence => true
end
