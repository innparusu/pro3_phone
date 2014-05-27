class AddLocateToRooms < ActiveRecord::Migration
  def change
    add_column :rooms, :latitude, :decimal,:precision => 9, :scale => 6

    add_column :rooms, :longitude, :decimal,:precision => 9, :scale => 6
  end
end
