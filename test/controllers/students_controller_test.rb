require "test_helper"

class StudentControllerTest < ActionDispatch::IntegrationTest
  test "should get mail_record" do
    get student_mail_record_url
    assert_response :success
  end

end
