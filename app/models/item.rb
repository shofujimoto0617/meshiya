class Item < ApplicationRecord
  attachment :img

  validates :name, presence: true, length: {maximum: 15}
  validates :price, presence: true, :numericality => { :greater_than_or_equal_to => 1 }
  validates :explanation, length: {maximum: 500}

  def status_text
  	if status == true
  		"販売中"
  	else
  		"販売中止"
  	end
  end
end
