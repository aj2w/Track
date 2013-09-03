require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "selected_status" do
    mail = UserMailer.selected_status
    assert_equal "Selected status", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
