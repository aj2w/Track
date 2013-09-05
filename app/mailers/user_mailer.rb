class UserMailer < ActionMailer::Base
  default from: "track.automailer@gmail.com"

  def selected_status(user, alert)
    @greeting = "Hi there"
    @user = user
    @alert = alert
    @train = alert.train

    binding.pry
    mail to: user.email, subject: "[TRACK] #{@train.name } train status for #{Date.today.strftime("%D")}"
  end
end
