require "test_helper"

class RunEnvironmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get run_environments_new_url
    assert_response :success
  end

  test "should get create" do
    get run_environments_create_url
    assert_response :success
  end

  test "should get show" do
    get run_environments_show_url
    assert_response :success
  end

  test "should get index" do
    get run_environments_index_url
    assert_response :success
  end
end
