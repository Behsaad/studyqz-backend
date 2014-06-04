class Subject < ActiveRecord::Base
  has_many :courses
  belongs_to :university
end
