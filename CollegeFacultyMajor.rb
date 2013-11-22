class CollegeFacultyMajor < ActiveRecord::Base
  belongs_to :college_faculty_major 
  belongs_to :major
end