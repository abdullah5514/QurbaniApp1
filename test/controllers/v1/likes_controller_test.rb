require 'test_helper'

class V1::LikesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get v1_likes_index_url
    assert_response :success
  end

  test "should get new" do
    get v1_likes_new_url
    assert_response :success
  end

end
