class DropColumnsTrip < ActiveRecord::Migration[5.2]
  def change
    remove_column :trips, :date
    remove_column :trips, :hour
    add_column :trips, :date, :datetime
  end
end
