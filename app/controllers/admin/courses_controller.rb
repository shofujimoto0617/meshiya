class Admin::CoursesController < ApplicationController
  def index
  	@courses = Course.all
  end

  def new
  	@course = Course.new
  	@course.course_images.build
  end

  def show
  	@course = Course.find(params[:id])
  	course_price = @course.course_price
  	@price_tax = Course.price_tax(course_price)
  end

  def edit
  	@course = Course.find(params[:id])
  end

  def create
  	@course = Course.new(course_params)
  	if @course.save
  	  redirect_to admin_courses_path, notice: "「#{@course.course_name}」を登録しました"
  	else
  	  render 'new'
  	end
  end

  def update
  	@course = Course.find(params[:id])
  	@course.update(course_update_params)
  	redirect_to admin_courses_path, notice: "「#{@course.course_name}」を変更しました"
  end

  def destroy
  	@course = Course.find(params[:id])
  	@course.destroy
  	redirect_to admin_courses_path, notice: "「#{@course.course_name}」を削除しました"
  end

  private

  def course_params
  	params.require(:course).permit(:genre_id, :course_name, :course_price, :course_explanation, :course_time, :status, :items_count, :human_min, :human_max, :drink, course_images_attributes: [:course_image])
  end

  def course_update_params
    params.require(:course).permit(
      :genre_id, :course_name, :course_price, :course_explanation, :course_time, :status, :items_count, :human_min, :human_max, :drink,
      [course_images_attributes: [:course_image, :_destroy, :id]])
  end
end
