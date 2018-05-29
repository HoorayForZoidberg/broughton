require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "welcome" do
    mail = UserMailer.welcome(User.first)
    assert_equal "Welcome to 111 W Broughton Tenant Website", mail.subject
    assert_equal ["bob@example.com"], mail.to
    assert_equal ["broughtonstreetresidents@gmail.com"], mail.from
    assert_match "Hello", mail.body.encoded
  end

end
