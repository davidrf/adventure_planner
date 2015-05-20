class CreateAdventures < ActiveRecord::Migration
  def change
    create_table :adventures do |t|
      t.string :name, null: false
      t.string :description
      t.string :location
      t.datetime :start_date
      t.datetime :end_date
      t.time :start_time
      t.time :end_time
      t.timestamps

      t.index :name, unique: true
    end
  end
end
