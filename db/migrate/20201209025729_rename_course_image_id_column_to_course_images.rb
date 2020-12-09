class RenameCourseImageIdColumnToCourseImages < ActiveRecord::Migration[5.2]
  def change
  	rename_column :course_images, :course_image_id, :course_image
  end
end
