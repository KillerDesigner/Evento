class CreatePresentationSpeakers < ActiveRecord::Migration
  def change
    create_table :presentation_speakers do |t|
      t.integer :presentation_id
      t.integer :speaker_id

      t.timestamps
    end
  end
end
