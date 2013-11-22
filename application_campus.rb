require 'active_record'
require 'sqlite3'

require_relative 'college'
require_relative 'faculty'
require_relative 'major'
require_relative 'semester'
require_relative 'course'
require_relative 'lecturer'
require_relative 'student'
require_relative 'college_faculty'
require_relative 'college_faculty_major'
require_relative 'college_lecturer'
require_relative 'lecturer_course'
require_relative 'college_faculty_major_course'
require_relative 'student_course'

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "campus.db"
  )

ActiveRecord::Schema.define do
  create_table :colleges do |table|
    table.column :name,:string
  end unless ActiveRecord::Base.connection.table_exists?('colleges')
  
  create_table :faculties do |table|
    table.column :name, :string
  end unless ActiveRecord::Base.connection.table_exists?('faculties')

  create_table :majors do |table|
    table.column :name, :string
  end unless ActiveRecord::Base.connection.table_exists?('majors')

  create_table :semesters do |table|
    table.column :name, :string
  end unless ActiveRecord::Base.connection.table_exists?('semesters')

  create_table :courses do |table|
    table.column :name, :string
  end unless ActiveRecord::Base.connection.table_exists?('courses')

  create_table :lecturers do |table|
    table.column :lecturer_id, :integer
  end unless ActiveRecord::Base.connection.table_exists?('lecturers')

  create_table :students do |table|
    table.column :student_id, :integer
  end unless ActiveRecord::Base.connection.table_exists?('students')

  create_table :college_faculties do |table|
    table.column :college_id, :integer
    table.column :faculty_id, :integer
  end unless ActiveRecord::Base.connection.table_exists?('college_faculties')

  create_table :college_faculty_majors do |table|
    table.column :college_faculty_id, :integer
    table.column :major_id,           :integer
  end unless ActiveRecord::Base.connection.table_exists?('college_faculty_majors')

  create_table :college_lecturers do |table|
    table.column :lecturer_id,  :integer
    table.column :college_id,   :integer
  end unless ActiveRecord::Base.connection.table_exists?('college_lecturers')

  create_table :lecturer_courses do |table|
    table.column :lecturer_id,  :integer
    table.column :course_id,    :integer
  end unless ActiveRecord::Base.connection.table_exists?('lecturer_courses')

  create_table :college_faculty_major_courses do |table|
    table.column :college_faculty_major_id,   :integer
    table.column :course_id,                  :integer
    table.column :major_id,                   :integer
    table.column :credit,                     :integer
  end unless ActiveRecord::Base.connection.table_exists?('college_faculty_major_courses')

  create_table :student_courses do |table|
    table.column :student_id,                       :integer
    table.column :college_faculty_major_course_id,  :integer
    table.column :poin,                             :integer
    table.column :grade,			    :string
  end unless ActiveRecord::Base.connection.table_exists?('student_courses')
end
