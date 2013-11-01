class AlertsController < ApplicationController

  def new
    @alert = Alert.new
  end

  def create
    @alert = Alert.new(alert_params)

    temp_array = [alert_params["monday"],alert_params["tuesday"],alert_params["wednesday"],alert_params["thurdsay"],
                  alert_params["friday"],alert_params["saturday"],alert_params["sunday"]]

    temp_array.each do |day|
      if day == "1"
        binding.pry
        @alert.days_array << day
      end
    end

    if user_signed_in?
      @alert.save
      redirect_to dashboard_path
    else
      redirect_to new_user_session_path
    end
  end

  def edit
    @alert = Alert.find(params[:id])
  end

  def update
    @alert = Alert.find(params[:id])
    temp_array = [alert_params["monday"],alert_params["tuesday"],alert_params["wednesday"],alert_params["thurdsay"],
                  alert_params["friday"],alert_params["saturday"],alert_params["sunday"]]

    temp_array.each do |day|
      if day == "1"
        binding.pry
        @alert.days_array << day
      end
    end

    if @alert.update_attributes(alert_params)
      redirect_to dashboard_path
    end
  end

  def destroy
    @alert = Alert.find(params[:id])
    @alert.destroy
    redirect_to dashboard_path
  end

private
  #This is all my privates below
  def alert_params
    params.require(:alert).permit(:name, :time_to_send, :train_id, :user_id, :recurring, :monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday)
  end

end
