class CreateSpeakers < ActiveRecord::Migration
  def change
    create_table :speakers do |t|
      t.string :name
      t.string :title
      t.string :email
      t.string :affiliation
      t.string :phone
      t.string :short_background
      t.text :long_background

      t.timestamps
    end
  end
end
