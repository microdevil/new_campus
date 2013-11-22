class Course < ActiveRecord::Base
  has_many :lecturer_course
  has_many :lecturer, through: :lecturer_course

  has_many :college_faculty_major_course
  has_many :semester, through: :college_faculty_major_course

  has_many :college_faculty_major_course
  has_many :college_faculty_major_id through: :college_faculty_major_course
end

class LecturerSourse < ActiveRecord::Base
	belongs_to :lecturer
end

class CollegeFacultyMajorCourse < ActiveRecord::Base
 belongs_to :semester 
end


