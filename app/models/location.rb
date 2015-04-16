class Location < ActiveRecord::Base
	belongs_to :serial
	geocoded_by :address
	after_validation :geocode, :if => :address_changed?

	# search query
  def self.search(query)
      return where('') if query.blank?

      conditions = []
      search_columns = [ :serial_number, :address, :name ]

			query.downcase
			
      query.split(' ').each do |word|
          search_columns.each do |column|
              conditions << " cast(#{column} as text) LIKE #{sanitize("%#{word}%")} "
          end
      end

      conditions = conditions.join('OR')
      self.where(conditions)
			#where("cast(serial_number as text) LIKE ?", "%#{query}%")
  end
end
