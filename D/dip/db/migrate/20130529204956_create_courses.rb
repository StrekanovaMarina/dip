class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.integer :cost_g
      t.integer :cost_i
      t.integer :duration_g
      t.integer :duration_i
      t.string :enrollment
      t.integer :type_courses_id

      t.timestamps
    end
  end
end
