class WelcomeController < ApplicationController

  def index
    if user_signed_in?
      redirect_to dashboard_path
      return
    end

    @alert = Alert.new
    @line123 = Train.find(1)
    @line456 = Train.find(2)
    @line7 = Train.find(3)
    @lineACE = Train.find(4)
    @lineBDFM = Train.find(5)
    @lineG = Train.find(6)
    @lineJZ = Train.find(7)
    @lineL = Train.find(8)
    @lineNQR = Train.find(9)
    @lineS = Train.find(10)
    @lineSIR = Train.find(11)
  end

  def dashboard
    @alerts = Alert.where(user_id: current_user.id)

    @alert = Alert.new
    @line123 = Train.find(1)
    @line456 = Train.find(2)
    @line7 = Train.find(3)
    @lineACE = Train.find(4)
    @lineBDFM = Train.find(5)
    @lineG = Train.find(6)
    @lineJZ = Train.find(7)
    @lineL = Train.find(8)
    @lineNQR = Train.find(9)
    @lineS = Train.find(10)
    @lineSIR = Train.find(11)
  end

  def sendgrid
  end

private
  #This is all my privates below
  def alert_params
    params.require(:alert).permit(:time_to_send, :train_id, :user_id)
  end

end
