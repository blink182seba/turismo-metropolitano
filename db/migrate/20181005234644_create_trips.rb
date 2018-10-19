class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.string :name
      t.references :users, foreign_key: true

      t.timestamps
    end
  end
end
