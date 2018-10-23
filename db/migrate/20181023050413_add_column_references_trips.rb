class AddColumnReferencesTrips < ActiveRecord::Migration[5.2]
  def change
    add_reference :trip_activities, :reservations, foreign_key: true
  end
end
