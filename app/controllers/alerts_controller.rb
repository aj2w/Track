class AlertsController < ApplicationController

  def new
    @alert = Alert.new
  end

  def create
    @alert = Alert.new(alert_params)

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
  # def alert_params
  #   # params.require(:alert).permit(:name, :time_to_send, :train_id, :user_id, :recurring, {:day_ids => []})

  #   # params[:alert].permit(day_ids: [])
  # end
def alert_params
  params[:alert].permit(
    :name,
    :time_to_send,
    :train_id,
    :user_id,
    :recurring,
    {:day_ids => []}
  )
end

end
