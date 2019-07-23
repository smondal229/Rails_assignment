require 'test_helper'

class EmployeeControllerTest < ActionDispatch::IntegrationTest
  test "should get download" do
    get employee_download_url
    assert_response :success
  end

end
