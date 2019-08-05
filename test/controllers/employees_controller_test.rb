require "test_helper"

class EmployeesControllerTest < ActionDispatch::IntegrationTest
  test "should get download" do
    get employees_download_url
    assert_response :success
  end

end
