require 'test_helper'

class QuestionFeedbacksControllerTest < ActionController::TestCase
  setup do
    @question_feedback = question_feedbacks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:question_feedbacks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create question_feedback" do
    assert_difference('QuestionFeedback.count') do
      post :create, question_feedback: { message: @question_feedback.message, question_id: @question_feedback.question_id, user_id: @question_feedback.user_id }
    end

    assert_redirected_to question_feedback_path(assigns(:question_feedback))
  end

  test "should show question_feedback" do
    get :show, id: @question_feedback
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @question_feedback
    assert_response :success
  end

  test "should update question_feedback" do
    patch :update, id: @question_feedback, question_feedback: { message: @question_feedback.message, question_id: @question_feedback.question_id, user_id: @question_feedback.user_id }
    assert_redirected_to question_feedback_path(assigns(:question_feedback))
  end

  test "should destroy question_feedback" do
    assert_difference('QuestionFeedback.count', -1) do
      delete :destroy, id: @question_feedback
    end

    assert_redirected_to question_feedbacks_path
  end
end
