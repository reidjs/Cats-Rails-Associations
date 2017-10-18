class Course < ApplicationRecord
  has_many :enrollments,
  class_name: :Enrollment,
  primary_key: :id,
  foreign_key: :course_id

  has_many :enrolled_students,
  # class_name: :User,
  # primary_key: :id,
  through: :enrollments,
  source: :user

  has_many :prereqs,
  class_name: :Course,
  foreign_key: :id,
  primary_key: :prereq_id

  # belongs_to :harder_course,
  # class_name: :Course,
  # foreign_key: :prereq_id,
  # primary_key: :id

  has_one :instructor,
  class_name: :User,
  primary_key: :instructor_id,
  foreign_key: :id
end
