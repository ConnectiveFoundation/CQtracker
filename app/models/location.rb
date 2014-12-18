class Location < ActiveRecord::Base
	geocoded_by :address
	after_validation :geocode, :if => :address_changed?
	def self.search(query)
		where("address like ?", "%#{query}%")
	end
end
