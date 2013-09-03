class CreateAlerts < ActiveRecord::Migration
  def change
    create_table :alerts do |t|
      t.time :time_to_send
      t.belongs_to :train
      t.belongs_to :user
      # t.string :days_to_send
    end
  end
end
