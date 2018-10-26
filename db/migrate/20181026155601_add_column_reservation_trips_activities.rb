class AddColumnReservationTripsActivities < ActiveRecord::Migration[5.2]
  def change
    remove_column :trip_activities, :reservations_id
    add_reference :trip_activities, :reservation, foreign_key: true
  end
end
