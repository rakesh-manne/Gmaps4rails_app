class MapsController < ApplicationController
  def index
  	@json = []
  	@coffee = Coffeeshop.all.to_gmaps4rails do |coffee, marker|
  		 marker.picture({
          :picture => "/assets/coffeehouse.png",
          :width   => 32,
          :height  => 32
         })
    end      

  	@pizza = Pizzashop.all.to_gmaps4rails  do |pizza, marker|
  		 marker.picture({
          :picture => "/assets/hotsprings.png",
          :width   => 32,
          :height  => 32
         })
  	end	

  	JSON.parse(@coffee).each do |c|
  		@json << c
  	end

  	JSON.parse(@pizza).each do |p|
  		@json << p
  	end	
  	

  end
end
