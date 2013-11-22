class Student < ActiveRecord::Base
  belongs_to :college_faculty_major
  
  has_many :student_courses
  has_many :college_faculty_major_courses, through: :student_courses

  has_many :courses
  has_many :college_faculty_majors, through: :courses
end