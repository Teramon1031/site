require "test_helper"

class IwillbeControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get iwillbe_home_url
    assert_response :success
  end
end
