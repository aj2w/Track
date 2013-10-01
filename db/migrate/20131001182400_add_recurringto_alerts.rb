class AddRecurringtoAlerts < ActiveRecord::Migration
  def change
      add_column :alerts, :recurring, :boolean, default: true

  end
end
