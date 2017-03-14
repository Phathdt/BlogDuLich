require 'test_helper'

class Admin::TourcategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admin_tourcategories_new_url
    assert_response :success
  end

  test "should get create" do
    get admin_tourcategories_create_url
    assert_response :success
  end

  test "should get edit" do
    get admin_tourcategories_edit_url
    assert_response :success
  end

  test "should get update" do
    get admin_tourcategories_update_url
    assert_response :success
  end

  test "should get destroy" do
    get admin_tourcategories_destroy_url
    assert_response :success
  end

  test "should get index" do
    get admin_tourcategories_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_tourcategories_show_url
    assert_response :success
  end

end
