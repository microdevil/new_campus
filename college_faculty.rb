class CollegeFaculty < ActiveRecord::Base
  belongs_to :college
  belongs_to :faculty
  has_many :majors, class_name: 'CollegeFacultyMajor'

  delegate :name, to: :faculty

end
