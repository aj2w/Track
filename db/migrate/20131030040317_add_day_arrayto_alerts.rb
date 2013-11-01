class AddDayArraytoAlerts < ActiveRecord::Migration
  def change
    add_column :alerts, :days_array, :string, array: true
  end
end
