class UserMailer < ActionMailer::Base
  default from: "track.automailer@gmail.com"

  def selected_status(user, alert)
    # @greeting = "Hi"
    @user = user
    @alert = alert
    @train = alert.train

    mail to: user.email, subject: "[TRACK] #{@train.name }: #{@train.status} - #{Date.today.strftime("%D")}"
  end
end
