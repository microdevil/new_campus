class Major < ActiveRecord::Base
  has_many :college_faculty_major
  has_many :faculty, through: :college_faculty_major

  has_many :college_faculty_major_courses
  has_many :semesters, through: :college_faculty_major_courses
end