class RemoveSpotFromRooms < ActiveRecord::Migration
  def change
    remove_column :rooms, :spot, :string
  end
end
