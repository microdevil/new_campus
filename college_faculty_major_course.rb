class CollegeFacultyMajorCourse < ActiveRecord::Base
 belongs_to :semester
 belongs_to :course
 belongs_to :college_faculty_major 
end