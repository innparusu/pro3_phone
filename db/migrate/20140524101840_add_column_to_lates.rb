class AddColumnToLates < ActiveRecord::Migration
  def change
	add_column :lates, :lecture_count_no ,:integer
  end
end
