class TypeCourse < ActiveRecord::Base
  attr_accessible :title
  has_many :courses
end
