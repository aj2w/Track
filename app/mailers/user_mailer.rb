class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def selected_status
    @greeting = "Hi there"

    mail to: "to@example.org"
  end
end
