class Question < ActiveRecord::Base
  has_many :question_likes
  has_many :question_dislikes
  has_many :question_learneds
  has_many :question_feedbacks

  belongs_to :course
  belongs_to :user
end
