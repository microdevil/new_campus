class Lecturer < ActiveRecord::Base
  has_many :lecturer_course
  has_many :courses, through: :lecturer_course

  has_many :college_lecturer
  has_many :colleges, through: :college_lecturer
end