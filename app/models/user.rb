class User < ActiveRecord::Base
  has_many :courses

  belongs_to :university
  belongs_to :subject
end
