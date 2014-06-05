class CourseInvitation < ActiveRecord::Base
  belongs_to :invitedbyuser, :class_name => "User"
  belongs_to :inviteduser, :class_name => "User"
  belongs_to :course
end
