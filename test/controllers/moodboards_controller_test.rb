require 'test_helper'

class MoodboardsControllerTest < ActionController::TestCase
  setup do
    @moodboard = moodboards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:moodboards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create moodboard" do
    assert_difference('Moodboard.count') do
      post :create, moodboard: {  }
    end

    assert_redirected_to moodboard_path(assigns(:moodboard))
  end

  test "should show moodboard" do
    get :show, id: @moodboard
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @moodboard
    assert_response :success
  end

  test "should update moodboard" do
    patch :update, id: @moodboard, moodboard: {  }
    assert_redirected_to moodboard_path(assigns(:moodboard))
  end

  test "should destroy moodboard" do
    assert_difference('Moodboard.count', -1) do
      delete :destroy, id: @moodboard
    end

    assert_redirected_to moodboards_path
  end
end
