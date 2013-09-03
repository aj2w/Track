class AlertsController < ApplicationController

  def index
    @alerts = Alert.all
  end

  def new
    @alert = Alert.new
  end

  def create
    @alert = Alert.new(alert_params)

    if user_signed_in?
      @alert.save
      redirect_to :root #change to dashboard
    else
      redirect_to new_user_session_path
    end
  end

private
  #This is all my privates below
  def alert_params
    params.require(:alert).permit(:time_to_send, :train_id, :user_id)
  end

end
