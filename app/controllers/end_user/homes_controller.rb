class EndUser::HomesController < ApplicationController
  def top
  	items = Item.where(status: true).joins(:genre).where(genres: { is_active: true })
  	@items_rand = items.sample(3)
  	courses = Course.where(status: true).joins(:genre).where(genres: { is_active: true })
  	@courses_rand = courses.sample(3)
  end

  def item_index
  	@items = Item.where(status: true).joins(:genre).where(genres: { is_active: true })
  end

  def course_index
    @courses = Course.where(status: true).joins(:genre).where(genres: { is_active: true })
  end

  def course_show
    @course = Course.find(params[:id])
    course_price = @course.course_price
    @price_tax = Course.price_tax(course_price)
  end

end
