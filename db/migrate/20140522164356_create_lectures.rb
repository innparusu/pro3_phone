class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.string :name
      t.string :teachr
      t.integer :room_id
      t.integer :period_id
      t.string :day
      t.integer :lecture_count

      t.timestamps
    end
  end
end
