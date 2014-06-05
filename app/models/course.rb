class Course < ActiveRecord::Base
  has_many :questions
  has_many :course_students
  has_many :course_tutors
  has_many :course_invitations

  belongs_to :subject
  belongs_to :university
  belongs_to :user
end
