class CreateAlerts < ActiveRecord::Migration
  def change
    create_table :alerts do |t|
      t.string :train
      t.time :time_to_send
      # t.string :days
    end
  end
end
