require 'test_helper'

class Admin::OptionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_options_index_url
    assert_response :success
  end

end
