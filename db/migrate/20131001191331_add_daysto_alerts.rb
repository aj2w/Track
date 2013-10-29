class AddDaystoAlerts < ActiveRecord::Migration
  def change
    execute "create extension hstore"
    add_column :alerts, :days, :hstore, default: {monday: true, tuesday: true, wednesday: true, thursday: true, friday: true, saturday: true, sunday: true}
  end
end
