class CreatePresentationAttendees < ActiveRecord::Migration
  def change
    create_table :presentation_attendees do |t|
      t.integer :presentation_id
      t.integer :attendee_id

      t.timestamps
    end
  end
end
