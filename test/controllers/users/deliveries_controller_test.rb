require 'test_helper'

class Users::DeliveriesControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get users_deliveries_update_url
    assert_response :success
  end

end
