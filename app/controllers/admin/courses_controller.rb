class Admin::CoursesController < ApplicationController
  def index
  end

  def new
  	@course = Course.new
  	@course.course_images.build
  end

  def show
  end

  def edit
  end

  def create
  	@course = Course.new(course_params)
  	if @course.save
  	  redirect_to admin_courses_path, notice: "「#{@course.course_name}」を登録しました"
  	else
  	  render 'new'
  	end
  end

  private

  def course_params
  	params.require(:course).permit(:genre_id, :course_name, :course_price, :course_explanation, :course_time, :status, course_images_images: [])
  end
end
