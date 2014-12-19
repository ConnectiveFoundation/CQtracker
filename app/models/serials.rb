class Serials < ActiveRecord::Base
	has_many :locations, dependent: :destroy
	validates :serial_number, presence: true, uniqueness: true
	#default_scope order("#{self.locations}.serial_number ASC")
end
