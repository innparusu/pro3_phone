class CreatePeriods < ActiveRecord::Migration
  def change
    create_table :periods do |t|
      t.integer :period_number
      t.time :begin_time
      t.time :end_time

      t.timestamps
    end
  end
end
