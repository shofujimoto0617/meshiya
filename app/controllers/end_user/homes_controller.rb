class EndUser::HomesController < ApplicationController
  def top
  	items = Item.where(status: true).joins(:genre).where(genres: { is_active: true })
  	@items_rand = items.sample(3)
  	courses = Course.where(status: true).joins(:genre).where(genres: { is_active: true })
  	@courses_rand = courses.sample(3)
  end

  def course
  end
end
