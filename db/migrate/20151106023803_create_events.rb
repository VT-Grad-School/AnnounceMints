class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :start_datetime
      t.date :end_date
      t.time :end_time
      t.string :recurring
      t.string :location
      t.text :description
      t.string :url

      t.timestamps null: false
    end
  end
end
