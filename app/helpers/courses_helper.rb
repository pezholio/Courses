module CoursesHelper

	def days_until_course(course)
		days = (course.start_date - Date.today).to_i
		if days > 0
			"#{pluralize(days,  'days')} to go!"
		else
			"Course has been and gone!"
		end
	end

end
