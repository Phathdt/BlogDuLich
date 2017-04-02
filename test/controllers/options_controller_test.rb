require 'test_helper'

class OptionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get options_index_url
    assert_response :success
  end

  test "should get thankyou" do
    get options_thankyou_url
    assert_response :success
  end

  test "should get support" do
    get options_support_url
    assert_response :success
  end

  test "should get about" do
    get options_about_url
    assert_response :success
  end

end
