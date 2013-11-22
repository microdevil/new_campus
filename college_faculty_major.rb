class CollegeFacultyMajor < ActiveRecord::Base
  belongs_to :college_faculty 
  belongs_to :major
end