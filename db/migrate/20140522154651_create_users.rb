class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string   :name
      t.integer  :grade
      t.string   :number
      t.string   :mail_address
      t.string   :password
      t.timestamps
    end
  end
end
