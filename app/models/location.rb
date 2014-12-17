class Location < ActiveRecord::Base
	include PgSearch
	geocoded_by :address
	after_validation :geocode, :if => :address_changed?
end