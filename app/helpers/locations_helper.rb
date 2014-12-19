module LocationsHelper
	def sortable(column, title = nil)
		title ||= column, titleize
		direction = column == params[:sort] && params[:direction] == "asc" ? "desc" : "asc"
		link to title, :sort => column, :direction => direction
	end
end
