class College < ActiveRecord::Base
  has_many :faculties, class_name: 'CollegeFaculty'

end
