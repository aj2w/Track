class AlertsController < ApplicationController

  def index
    @alerts = Alert.all
  end

  def new
    @alert = Alert.new
  end

end