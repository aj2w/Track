class CreateAlertsDays < ActiveRecord::Migration
  def change
    create_table :alerts_days, :id => false do |t|
      t.belongs_to :alert
      t.belongs_to :day
    end
  end
end
