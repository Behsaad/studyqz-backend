require 'test_helper'

class QuestionLearnedsControllerTest < ActionController::TestCase
  setup do
    @question_learned = question_learneds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:question_learneds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create question_learned" do
    assert_difference('QuestionLearned.count') do
      post :create, question_learned: { question_id: @question_learned.question_id, user_id: @question_learned.user_id }
    end

    assert_redirected_to question_learned_path(assigns(:question_learned))
  end

  test "should show question_learned" do
    get :show, id: @question_learned
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @question_learned
    assert_response :success
  end

  test "should update question_learned" do
    patch :update, id: @question_learned, question_learned: { question_id: @question_learned.question_id, user_id: @question_learned.user_id }
    assert_redirected_to question_learned_path(assigns(:question_learned))
  end

  test "should destroy question_learned" do
    assert_difference('QuestionLearned.count', -1) do
      delete :destroy, id: @question_learned
    end

    assert_redirected_to question_learneds_path
  end
end
