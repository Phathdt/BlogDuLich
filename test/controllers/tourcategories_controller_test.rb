require 'test_helper'

class TourcategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get tourcategories_show_url
    assert_response :success
  end

end
