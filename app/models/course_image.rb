class CourseImage < ApplicationRecord
  belongs_to :course
  # attachment :course_image
  mount_uploader :course_image, CourseImageUploader
end
