class Location < ActiveRecord::Base
	belongs_to :serial
	geocoded_by :address
	after_validation :geocode, :if => :address_changed?

	default_scope  { order(:serial_number => :asc) }

	# It returns the locations whose serial numbers match the query
	def self.search(query)
	# where(:serial_number, query) -> This would return an exact match of the query
	where("cast(serial_number as text) LIKE ?", "%#{query}%")
	#where("serial_number like ?", "%#{query}%") 
	end
end
