class Item < ApplicationRecord
  belongs_to :genre

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

  def self.price_tax(item_price)
  	price_tax = item_price.to_i * 1.10
  	@price_tax = price_tax.round
  end
end
