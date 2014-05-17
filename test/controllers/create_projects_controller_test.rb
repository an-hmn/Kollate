require 'test_helper'

class CreateProjectsControllerTest < ActionController::TestCase
  setup do
    @create_project = create_projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:create_projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create create_project" do
    assert_difference('CreateProject.count') do
      post :create, create_project: {  }
    end

    assert_redirected_to create_project_path(assigns(:create_project))
  end

  test "should show create_project" do
    get :show, id: @create_project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @create_project
    assert_response :success
  end

  test "should update create_project" do
    patch :update, id: @create_project, create_project: {  }
    assert_redirected_to create_project_path(assigns(:create_project))
  end

  test "should destroy create_project" do
    assert_difference('CreateProject.count', -1) do
      delete :destroy, id: @create_project
    end

    assert_redirected_to create_projects_path
  end
end
