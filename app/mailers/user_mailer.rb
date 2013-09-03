class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def selected_status(user)
    @greeting = "Hi there"
    @user = user
    # binding.pry
    mail to: user.email, subject: "Subway Status for #{Date.today}"
  end
end
