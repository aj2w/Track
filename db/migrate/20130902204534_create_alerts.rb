class CreateAlerts < ActiveRecord::Migration
  def change
    create_table :alerts do |t|
      t.string :name
      t.time :time_to_send
      t.belongs_to :train
      t.belongs_to :user
    end
  end
end
