class Location < ActiveRecord::Base
	geocoded_by :address
	after_validation :geocode, :if => :address_changed?

	validates :serial_number, presence: true, uniqueness: true
	validates :address, presence: true

	# It returns the locations whose serial numbers match the query
	def self.search(query)
	# where(:serial_number, query) -> This would return an exact match of the query
	where("serial_number like ?", "%#{query}%") 
	end
end
