class CollegeFaculty < ActiveRecord::Base
  belongs_to: :college
  belongs_to: :faculty
end