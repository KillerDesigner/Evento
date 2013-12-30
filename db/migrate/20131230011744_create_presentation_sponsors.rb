class CreatePresentationSponsors < ActiveRecord::Migration
  def change
    create_table :presentation_sponsors do |t|
      t.integer :presentation_id
      t.integer :sponsor_id

      t.timestamps
    end
  end
end
