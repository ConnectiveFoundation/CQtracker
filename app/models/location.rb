class Location < ActiveRecord::Base
	geocoded_by :address
	after_validation :geocode, :if => :address_changed?
	def self.search(query)
		where("serial_number like ?", "%#{query}%")
	end
end
