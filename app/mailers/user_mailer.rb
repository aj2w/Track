class UserMailer < ActionMailer::Base
  default from: "track.automailer@gmail.com"

  def selected_status(user, alert)
    @greeting = "Hi there"
    @user = user
    @alert = alert
    @train = alert.train

    mail to: user.email, subject: "[TRACK] #{@train.name } line status: #{{@train.status}} - #{Date.today.strftime("%D")}"
  end
end
