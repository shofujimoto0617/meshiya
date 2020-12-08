class Course < ApplicationRecord
  belongs_to :genre
  has_many :course_images, dependent: :destroy

  accepts_attachments_for :course_images, attachment: :image

  enum course_time:[ :"30分", :"60分", :"90分", :"120分", :"180分", :無制限]
end
