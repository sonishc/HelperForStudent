require 'test_helper'

class UserTasksControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get user_tasks_show_url
    assert_response :success
  end

  test "should get edit" do
    get user_tasks_edit_url
    assert_response :success
  end

  test "should get update" do
    get user_tasks_update_url
    assert_response :success
  end

end
