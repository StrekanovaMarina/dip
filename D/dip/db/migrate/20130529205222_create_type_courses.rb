class CreateTypeCourses < ActiveRecord::Migration
  def change
    create_table :type_courses do |t|
      t.string :title

      t.timestamps
    end
  end
end
