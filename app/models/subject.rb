class Subject < ActiveRecord::Base
  has_many :courses
  has_many :users
end
