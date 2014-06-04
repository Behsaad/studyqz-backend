class Course < ActiveRecord::Base
  has_many :questions

  belongs_to :subject
  belongs_to :university
  belongs_to :user
end
