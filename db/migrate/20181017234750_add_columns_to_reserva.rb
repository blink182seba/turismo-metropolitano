class AddColumnsToReserva < ActiveRecord::Migration[5.2]
  def change
    add_reference :reservas, :trip_activities, foreign_key: true
  end
end
