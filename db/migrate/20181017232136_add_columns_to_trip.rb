class AddColumnsToTrip < ActiveRecord::Migration[5.2]
  def change
    add_column :trips, :price, :integer
    add_column :trips, :date, :date
    add_column :trips, :hour, :time
  end
end
