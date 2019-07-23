require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get download" do
    get user_download_url
    assert_response :success
  end

end
