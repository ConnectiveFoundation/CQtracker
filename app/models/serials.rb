class Serials < ActiveRecord::Base
	has_many :locations, dependent: :destroy
	validates :serial_number, presence: true, uniqueness: true
end
