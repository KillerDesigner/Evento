class CreateExhibitAttendees < ActiveRecord::Migration
  def change
    create_table :exhibit_attendees do |t|
      t.integer :exhibit_id
      t.integer :attendee_id

      t.timestamps
    end
  end
end
