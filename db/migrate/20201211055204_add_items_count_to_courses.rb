class AddItemsCountToCourses < ActiveRecord::Migration[5.2]
  def change
  	add_column :courses, :items_count, :integer, null: false, default: 0
  	add_column :courses, :human_min, :integer, null: false, default: 0
  	add_column :courses, :human_max, :integer, null: false, default: 0
  	add_column :courses, :drink, :integer, null: false, default: 0
  end
end
