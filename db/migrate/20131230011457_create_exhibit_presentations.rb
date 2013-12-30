class CreateExhibitPresentations < ActiveRecord::Migration
  def change
    create_table :exhibit_presentations do |t|
      t.integer :exhibit_id
      t.integer :presentation_id

      t.timestamps
    end
  end
end
