class CreateTrains < ActiveRecord::Migration
  def change
    create_table :trains do |t|
      t.string :name
      t.text :status
      t.text :text
      t.string :date
      t.string :time
      t.timestamps
    end
  end
end
