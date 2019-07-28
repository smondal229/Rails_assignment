require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get download" do
    get users_download_url
    assert_response :success
  end

end
