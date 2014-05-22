class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.integer :user_id
      t.integer :lecture_id
      t.integer :late_count
      t.integer :absence_count
      t.timestamps
    end
  end
end
