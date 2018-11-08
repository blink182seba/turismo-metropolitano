class DropColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :reservations, :price
  end
end
