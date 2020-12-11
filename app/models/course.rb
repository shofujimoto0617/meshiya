class Course < ApplicationRecord
  belongs_to :genre
  has_many :course_images, dependent: :destroy

  # accepts_attachments_for :course_images, attachment: :image

  accepts_nested_attributes_for :course_images, allow_destroy: true
  # mount_uploader :course_image, ImageUploader

  enum course_time:[ :"30分", :"60分", :"90分", :"120分", :"180分", :無制限]
  enum items_count:[ :"3品", :"4品", :"5品", :"6品", :"7品", :"8品", :"9品", :"10品", :"11品", :"12品", :"13品", :"14品", :"15品",:"16品",:"17品"]
  enum drink: { 飲み放題あり: 0, 飲み放題なし: 1 }


  def status_text
  	if status == true
  		"販売中"
  	else
  		"販売中止"
  	end
  end

  def self.price_tax(course_price)
  	price_tax = course_price.to_i * 1.10
  	@price_tax = price_tax.round
  end
end
