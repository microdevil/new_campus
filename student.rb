class Student < ActiveRecord::Base
  has_many :student_courses
  has_many :college_faculty_major_courses, through: :student_courses
end