class CreateAnnouncements < ActiveRecord::Migration
  def change
    create_table :announcements do |t|
      t.string :title
      t.text :description
      t.string :contact
      t.string :url

      t.timestamps null: false
    end
  end
end
