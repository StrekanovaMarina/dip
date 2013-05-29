class Course < ActiveRecord::Base
  attr_accessible :cost_g, :cost_i, :duration_g, :duration_i, :enrollment, :title, :type_courses_id
  belongs_to :type_courses
end
