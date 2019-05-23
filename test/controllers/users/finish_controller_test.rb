require 'test_helper'

class Users::FinishControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get users_finish_show_url
    assert_response :success
  end

end
