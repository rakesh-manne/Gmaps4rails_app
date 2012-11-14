class Coffeeshop < ActiveRecord::Base
  attr_accessible :latitude, :longitude, :name

  acts_as_gmappable :process_geocoding => false

  def gmaps4rails_infowindow
      "<P>#{self.name}</P>"
  end


end
