class CoursesController < ApplicationController

	#GET /
	def index
		if params[:show] == "future"
			@courses = Course.future.all
		elsif params[:show] == "past"
			@courses = Course.past.all
		elsif params[:show] == "this_week"
			@courses = Course.this_week.all
		else
			@courses = Course.ordered.all
		end
	end
	
	# GET /courses/:id
	def show
		@course = Course.find(params[:id])
	end
	
	# GET /courses/:id/edit
	def edit
		@course = Course.find(params[:id])
	end
	
	# POST /courses/:id
	def update
		@course = Course.find(params[:id])
		if @course.update_attributes(params[:course])
			flash[:notice] = "Course edited!"
			redirect_to @course
		else
			render 'edit'
		end
	end
	
	# GET /courses/new
	def new
		@course = Course.new
	end
	
	# POST /courses
	def create
		@course = Course.new(params[:course])
		if @course.save
			flash[:notice] = "Course added!"
			redirect_to @course
		else
			render 'new'
		end
	end
end
