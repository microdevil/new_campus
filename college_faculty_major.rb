class CollegeFacultyMajor < ActiveRecord::Base
  has_many   :college_faculty_major_courses
  has_many   :courses, through: :college_faculty_major_courses
  belongs_to :college_faculty 
  belongs_to :major
  has_one    :faculty, through: :college_faculty
end
