class CreateCourseInvitations < ActiveRecord::Migration
  def change
    create_table :course_invitations do |t|
      t.references :invitedbyuser, index: true
      t.references :inviteduser, index: true
      t.references :course, index: true

      t.timestamps
    end
  end
end
