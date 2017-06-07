require 'test_helper'

class V1::UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get v1_users_index_url
    assert_response :success
  end

  test "should get new" do
    get v1_users_new_url
    assert_response :success
  end

end
