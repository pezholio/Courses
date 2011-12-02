class Course < ActiveRecord::Base
	validates_presence_of :name, :description
	validates_numericality_of :price
	has_many :bookings
	
	scope :this_week, lambda {
		where(:start_date => (Time.now.beginning_of_week..Time.now.end_of_week))
	}
	
	scope :future, lambda {
		where("start_date > ?", Time.now)
	}
	
	scope :past, lambda {
		where("start_date < ?", Time.now)
	}
	
	scope :ordered, order(:start_date)
	
	before_save :do_a_thing
	
	def do_a_thing
		#do a thing
	end
end
