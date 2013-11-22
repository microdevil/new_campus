class College < ActiveRecord::Base
  has_many :faculties, through: :college_faculties
  has_many :lecturers, through: :college_lecturers

end
