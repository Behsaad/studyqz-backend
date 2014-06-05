require 'test_helper'

class CourseInvitationsControllerTest < ActionController::TestCase
  setup do
    @course_invitation = course_invitations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:course_invitations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course_invitation" do
    assert_difference('CourseInvitation.count') do
      post :create, course_invitation: { course_id: @course_invitation.course_id, invitedbyuser_id: @course_invitation.invitedbyuser_id, inviteduser_id: @course_invitation.inviteduser_id }
    end

    assert_redirected_to course_invitation_path(assigns(:course_invitation))
  end

  test "should show course_invitation" do
    get :show, id: @course_invitation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course_invitation
    assert_response :success
  end

  test "should update course_invitation" do
    patch :update, id: @course_invitation, course_invitation: { course_id: @course_invitation.course_id, invitedbyuser_id: @course_invitation.invitedbyuser_id, inviteduser_id: @course_invitation.inviteduser_id }
    assert_redirected_to course_invitation_path(assigns(:course_invitation))
  end

  test "should destroy course_invitation" do
    assert_difference('CourseInvitation.count', -1) do
      delete :destroy, id: @course_invitation
    end

    assert_redirected_to course_invitations_path
  end
end
