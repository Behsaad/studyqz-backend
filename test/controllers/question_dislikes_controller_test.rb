require 'test_helper'

class QuestionDislikesControllerTest < ActionController::TestCase
  setup do
    @question_dislike = question_dislikes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:question_dislikes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create question_dislike" do
    assert_difference('QuestionDislike.count') do
      post :create, question_dislike: { question_id: @question_dislike.question_id, user_id: @question_dislike.user_id }
    end

    assert_redirected_to question_dislike_path(assigns(:question_dislike))
  end

  test "should show question_dislike" do
    get :show, id: @question_dislike
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @question_dislike
    assert_response :success
  end

  test "should update question_dislike" do
    patch :update, id: @question_dislike, question_dislike: { question_id: @question_dislike.question_id, user_id: @question_dislike.user_id }
    assert_redirected_to question_dislike_path(assigns(:question_dislike))
  end

  test "should destroy question_dislike" do
    assert_difference('QuestionDislike.count', -1) do
      delete :destroy, id: @question_dislike
    end

    assert_redirected_to question_dislikes_path
  end
end
