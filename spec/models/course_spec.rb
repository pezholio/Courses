require 'spec_helper'

describe Course do
	describe "instance" do
		before do
			@course = Course.new({
				:name => 'My Course',
				:description => 'Hello',
				:price => 9.99,
				:start_date => "2012-01-01"
			})
		end
	
		it "should have a name" do
			@course.name = nil
			@course.should_not be_valid
		end
		
		it "should have a description" do
			@course.description = nil
			@course.should_not be_valid
		end
		
		it "should do a thing before saving" do
			@course.should_recieve(:do_a_thing)
			@course.save
		end
	end
end