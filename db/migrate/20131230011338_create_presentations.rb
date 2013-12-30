class CreatePresentations < ActiveRecord::Migration
  def change
    create_table :presentations do |t|
      t.string :name
      t.string :topic
      t.text :description
      t.date :date
      t.time :start_time
      t.time :end_time
      t.string :fee

      t.timestamps
    end
  end
end
