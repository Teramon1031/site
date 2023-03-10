require "test_helper"

class StepControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get step_home_url
    assert_response :success
  end
end
