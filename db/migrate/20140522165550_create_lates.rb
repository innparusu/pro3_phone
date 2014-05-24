class CreateLates < ActiveRecord::Migration
  def change
    create_table :lates do |t|
      t.integer :lecture_id
      t.integer :user_id
      t.boolean :late

      t.timestamps
    end
  end
end
