namespace :status do
  desc "TODO"
  task :mail => :environment do

    UserMailer.selected_status.deliver

  end
end