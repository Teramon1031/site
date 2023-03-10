require "test_helper"

class DailyControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get daily_home_url
    assert_response :success
  end
end
