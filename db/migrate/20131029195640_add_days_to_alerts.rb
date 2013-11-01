class AddDaysToAlerts < ActiveRecord::Migration
  def change
    add_column :alerts, :monday, :boolean, default: true
    add_column :alerts, :tuesday, :boolean, default: true
    add_column :alerts, :wednesday, :boolean, default: true
    add_column :alerts, :thursday, :boolean, default: true
    add_column :alerts, :friday, :boolean, default: true
    add_column :alerts, :saturday, :boolean, default: true
    add_column :alerts, :sunday, :boolean, default: true
  end
end
