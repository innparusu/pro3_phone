class RenameTolectures < ActiveRecord::Migration
  def change
    rename_column :lectures, :teachr, :teacher
  end
end
