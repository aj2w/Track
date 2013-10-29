namespace :status do
  desc "TODO"
  task :mail => :environment do

    @alerts = Alert.all
    record = Record.first

    time = Time.new
    today = time.wday #will be an integer



    @alerts.each do |alert|
      @alert = alert
      alert_time_in_mins = alert.time_to_send.hour * 60 + alert.time_to_send.min
      current_time_in_mins = Time.now.hour * 60 + Time.now.min
      last_time_in_mins = record.last.hour * 60 + record.last.min

# need to finish adding functionality to check today's day
      if
        if alert_time_in_mins > last_time_in_mins && current_time_in_mins > alert_time_in_mins
          @user = User.find(alert.user_id)
          UserMailer.selected_status(@user, @alert).deliver
        end
      end

      # destroys alert if non-recurring
      if alert.recurring == false
        alert.destroy
      end
    end

    # Below saves the last time the rake was completed
    record.last = DateTime.now
    record.save
  end
end