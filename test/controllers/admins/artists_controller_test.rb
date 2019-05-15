require 'test_helper'

class Admins::ArtistsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_artists_index_url
    assert_response :success
  end

  test "should get create" do
    get admins_artists_create_url
    assert_response :success
  end

  test "should get edit" do
    get admins_artists_edit_url
    assert_response :success
  end

  test "should get update" do
    get admins_artists_update_url
    assert_response :success
  end

  test "should get destroy" do
    get admins_artists_destroy_url
    assert_response :success
  end

end
