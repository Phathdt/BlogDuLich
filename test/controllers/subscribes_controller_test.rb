require 'test_helper'

class SubscribesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get subscribes_new_url
    assert_response :success
  end

  test "should get create" do
    get subscribes_create_url
    assert_response :success
  end

  test "should get destroy" do
    get subscribes_destroy_url
    assert_response :success
  end

end
