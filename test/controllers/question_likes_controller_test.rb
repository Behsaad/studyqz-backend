require 'test_helper'

class QuestionLikesControllerTest < ActionController::TestCase
  setup do
    @question_like = question_likes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:question_likes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create question_like" do
    assert_difference('QuestionLike.count') do
      post :create, question_like: { question_id: @question_like.question_id, user_id: @question_like.user_id }
    end

    assert_redirected_to question_like_path(assigns(:question_like))
  end

  test "should show question_like" do
    get :show, id: @question_like
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @question_like
    assert_response :success
  end

  test "should update question_like" do
    patch :update, id: @question_like, question_like: { question_id: @question_like.question_id, user_id: @question_like.user_id }
    assert_redirected_to question_like_path(assigns(:question_like))
  end

  test "should destroy question_like" do
    assert_difference('QuestionLike.count', -1) do
      delete :destroy, id: @question_like
    end

    assert_redirected_to question_likes_path
  end
end
