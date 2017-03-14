require 'test_helper'

class BlogcategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get blogcategories_show_url
    assert_response :success
  end

end
