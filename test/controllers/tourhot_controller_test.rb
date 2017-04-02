require 'test_helper'

class TourhotControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tourhot_index_url
    assert_response :success
  end

end
