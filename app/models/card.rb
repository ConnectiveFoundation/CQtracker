class Card < ActiveRecord::Base
	geocoded_by :address
	after_validation :geocode
	def gmaps4rails_address
    	"#{zip}"
  	end
end