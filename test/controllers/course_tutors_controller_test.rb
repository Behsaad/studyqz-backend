require 'test_helper'

class CourseTutorsControllerTest < ActionController::TestCase
  setup do
    @course_tutor = course_tutors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:course_tutors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course_tutor" do
    assert_difference('CourseTutor.count') do
      post :create, course_tutor: { course: @course_tutor.course, references: @course_tutor.references, user_id: @course_tutor.user_id }
    end

    assert_redirected_to course_tutor_path(assigns(:course_tutor))
  end

  test "should show course_tutor" do
    get :show, id: @course_tutor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course_tutor
    assert_response :success
  end

  test "should update course_tutor" do
    patch :update, id: @course_tutor, course_tutor: { course: @course_tutor.course, references: @course_tutor.references, user_id: @course_tutor.user_id }
    assert_redirected_to course_tutor_path(assigns(:course_tutor))
  end

  test "should destroy course_tutor" do
    assert_difference('CourseTutor.count', -1) do
      delete :destroy, id: @course_tutor
    end

    assert_redirected_to course_tutors_path
  end
end
