require 'test_helper'

class Admin::OrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get admin_orders_edit_url
    assert_response :success
  end

  test "should get update" do
    get admin_orders_update_url
    assert_response :success
  end

  test "should get destroy" do
    get admin_orders_destroy_url
    assert_response :success
  end

  test "should get index" do
    get admin_orders_index_url
    assert_response :success
  end

end
