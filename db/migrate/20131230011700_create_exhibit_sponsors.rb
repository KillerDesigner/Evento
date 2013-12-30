class CreateExhibitSponsors < ActiveRecord::Migration
  def change
    create_table :exhibit_sponsors do |t|
      t.integer :exhibit_id
      t.integer :sponsor_id

      t.timestamps
    end
  end
end
