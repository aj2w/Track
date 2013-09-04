namespace :status do
  desc "TODO"
  task :mail => :environment do

    @alerts = Alert.all

    @alerts.each do |alert|
      @alert = alert
      alert_time_in_mins = alert.time_to_send.hour * 60 + alert.time_to_send.min # should be greater by less than 15 mins
      current_time_in_mins = Time.now.hour * 60 + Time.now.min
      time_diff = alert_time_in_mins - current_time_in_mins

      if time_diff <= 15 && alert_time_in_mins > current_time_in_mins
        @user = User.find(alert.user_id)
        UserMailer.selected_status(@user, @alert).deliver
      end
    end

  end
end