class Rsvp < ActiveRecord::Base
  validates :names, :presence => true
end
