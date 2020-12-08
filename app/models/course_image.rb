class CourseImage < ApplicationRecord
  belongs_to :course
  attachment :course_image
end
