require 'test_helper'

class Admins::DeliveriesControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get admins_deliveries_update_url
    assert_response :success
  end

end
