require 'test_helper'

class Admin::ToursControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admin_tours_new_url
    assert_response :success
  end

  test "should get create" do
    get admin_tours_create_url
    assert_response :success
  end

  test "should get edit" do
    get admin_tours_edit_url
    assert_response :success
  end

  test "should get update" do
    get admin_tours_update_url
    assert_response :success
  end

  test "should get destroy" do
    get admin_tours_destroy_url
    assert_response :success
  end

  test "should get index" do
    get admin_tours_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_tours_show_url
    assert_response :success
  end

end
