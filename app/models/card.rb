class Card < ActiveRecord::Base
	geocoded_by :zip
	#auto-fetch coordinates and the condition is for preventing fetching the same address
	after_validation :geocode, if: :zip_changed?
end