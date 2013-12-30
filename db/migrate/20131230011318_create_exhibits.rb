class CreateExhibits < ActiveRecord::Migration
  def change
    create_table :exhibits do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.time :start_time
      t.time :end_time
      t.string :short_description
      t.text :long_description

      t.timestamps
    end
  end
end
