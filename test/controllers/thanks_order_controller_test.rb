require 'test_helper'

class ThanksOrderControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get thanks_order_create_url
    assert_response :success
  end

end
