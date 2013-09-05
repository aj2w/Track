class CreateRecord < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.datetime :last
    end
  end
end
