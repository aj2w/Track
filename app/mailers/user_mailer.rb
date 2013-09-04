class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def selected_status(user, alert)
    @greeting = "Hi there"
    @user = user
    @alert = alert
    @train = Train.find(@alert.train_id)

    # binding.pry
    mail to: user.email, subject: "[TRACK] #{@train.name } train status for #{Date.today.strftime("%D")}"
  end
end
