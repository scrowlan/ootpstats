require "test_helper"

class StatisticsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get statistics_index_url
    assert_response :success
  end

  test "should get show" do
    get statistics_show_url
    assert_response :success
  end

  test "should get new" do
    get statistics_new_url
    assert_response :success
  end

  test "should get create" do
    get statistics_create_url
    assert_response :success
  end

  test "should get import" do
    get statistics_import_url
    assert_response :success
  end
end
