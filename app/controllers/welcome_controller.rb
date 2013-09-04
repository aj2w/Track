class WelcomeController < ApplicationController

  def index
    @alert = Alert.new
  end

  def dashboard
    @alerts = Alert.where(:user_id == current_user.id)
  end

private
  #This is all my privates below
  def alert_params
    params.require(:alert).permit(:time_to_send, :train_id, :user_id)
  end

end
