class Location < ActiveRecord::Base
	geocoded_by :address
	after_validation :geocode, :if => :address_changed?

	algoliasearch do
	    attribute :address
	  end
end
