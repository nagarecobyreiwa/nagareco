require 'test_helper'

class DeleteUserControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get delete_user_show_url
    assert_response :success
  end

end
