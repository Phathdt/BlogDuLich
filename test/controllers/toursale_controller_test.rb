require 'test_helper'

class ToursaleControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get toursale_index_url
    assert_response :success
  end

end
