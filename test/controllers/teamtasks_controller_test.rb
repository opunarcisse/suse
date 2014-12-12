require 'test_helper'

class TeamtasksControllerTest < ActionController::TestCase
  setup do
    @teamtask = teamtasks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teamtasks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create teamtask" do
    assert_difference('Teamtask.count') do
      post :create, teamtask: { dateline: @teamtask.dateline, description: @teamtask.description, name: @teamtask.name, taskable_id: @teamtask.taskable_id, taskable_type: @teamtask.taskable_type, timeline: @teamtask.timeline, type: @teamtask.type }
    end

    assert_redirected_to teamtask_path(assigns(:teamtask))
  end

  test "should show teamtask" do
    get :show, id: @teamtask
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @teamtask
    assert_response :success
  end

  test "should update teamtask" do
    patch :update, id: @teamtask, teamtask: { dateline: @teamtask.dateline, description: @teamtask.description, name: @teamtask.name, taskable_id: @teamtask.taskable_id, taskable_type: @teamtask.taskable_type, timeline: @teamtask.timeline, type: @teamtask.type }
    assert_redirected_to teamtask_path(assigns(:teamtask))
  end

  test "should destroy teamtask" do
    assert_difference('Teamtask.count', -1) do
      delete :destroy, id: @teamtask
    end

    assert_redirected_to teamtasks_path
  end
end
