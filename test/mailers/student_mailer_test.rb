require 'test_helper'

class StudentMailerTest < ActionMailer::TestCase
  test "send_record" do
    mail = StudentMailer.send_record
    assert_equal "Send record", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
