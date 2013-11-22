class College_faculty < ActiveRecord::Base
  belongs_to: :college
  belongs_to: :faculty
end