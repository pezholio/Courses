require 'test_helper'

class CourseTest < ActiveSupport::TestCase

	test 'Should be invalid if theres no name' do
		u = Course.new
		u.description = "Heeeeellloo"
		u.price = 9.99
		u.start_date = "2011-01-01"
		
		assert u.invalid?
	end

end
