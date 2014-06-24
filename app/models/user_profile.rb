class UserProfile < ActiveRecord::Base
  belongs_to :university
  belongs_to :subject
  belongs_to :user
end
