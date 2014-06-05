class Subject < ActiveRecord::Base
  has_many :courses
  has_many :users

  belongs_to :university

end
