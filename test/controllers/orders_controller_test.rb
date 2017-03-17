require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get add" do
    get orders_add_url
    assert_response :success
  end

  test "should get create" do
    get orders_create_url
    assert_response :success
  end

end
