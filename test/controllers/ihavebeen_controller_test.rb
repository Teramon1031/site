require "test_helper"

class IhavebeenControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get ihavebeen_home_url
    assert_response :success
  end
end
