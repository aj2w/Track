namespace :testing do
  desc "TODO"
  task :mail => :environment do

    @alert = Alert.first
    @user = User.first
    UserMailer.selected_status(@user, @alert).deliver
    

    
  end
end