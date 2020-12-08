class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.integer :genre_id, null: false
      t.string :course_name, null: false
      t.integer :course_price, null: false
      t.text :course_explanation
      t.string :course_time, null: false
      t.boolean :status

      t.timestamps
    end
  end
end
