class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.references :user, foreign_key: true
      t.datetime :date
      t.string :name_trip
      t.integer :price

      t.timestamps
    end
  end
end
