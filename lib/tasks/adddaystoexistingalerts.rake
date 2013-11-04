namespace :add do
  desc "TODO"
  task :days => :environment do

    d1 = Day.find(1)
    d2 = Day.find(2)
    d3 = Day.find(3)
    d4 = Day.find(4)
    d5 = Day.find(5)
    d6 = Day.find(6)
    d7 = Day.find(7)

  Alert.all.each do |alert|
    alert.days = [d1, d2, d3, d4, d5, d6, d7]
    alert.save
  end


  end
end