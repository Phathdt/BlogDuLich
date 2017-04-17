require 'test_helper'

class Admin::SubscribesControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get admin_subscribes_edit_url
    assert_response :success
  end

  test "should get update" do
    get admin_subscribes_update_url
    assert_response :success
  end

  test "should get destroy" do
    get admin_subscribes_destroy_url
    assert_response :success
  end

  test "should get index" do
    get admin_subscribes_index_url
    assert_response :success
  end

end
