class Semester < ActiveRecord::Base
  has_many :college_faculty_major_course
end