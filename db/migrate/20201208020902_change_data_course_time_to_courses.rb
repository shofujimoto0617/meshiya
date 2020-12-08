class ChangeDataCourseTimeToCourses < ActiveRecord::Migration[5.2]
  def change
  	change_column :courses, :course_time, :integer
  end
end
