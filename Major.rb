class Major < ActiveRecord::Base
  belongs_to :faculty

  has_many :college_faculty_major_courses
  has_many :semesters, through: :college_faculty_major_courses
  has_many :courses, through: :college_faculty_major_courses

  has_many :student_courses
  has_many :students, through: :student_courses
end