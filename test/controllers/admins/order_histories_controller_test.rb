require 'test_helper'

class Admins::OrderHistoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_order_histories_index_url
    assert_response :success
  end

  test "should get show" do
    get admins_order_histories_show_url
    assert_response :success
  end

end
