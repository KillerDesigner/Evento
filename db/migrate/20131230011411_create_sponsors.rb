class CreateSponsors < ActiveRecord::Migration
  def change
    create_table :sponsors do |t|
      t.string :name
      t.string :company
      t.string :email
      t.string :phone
      t.integer :level
      t.string :amount

      t.timestamps
    end
  end
end
