class CreateToudis < ActiveRecord::Migration
  def change
    create_table :toudis do |t|
      t.integer :user_id
      t.integer :rec_user_id

      t.timestamps
    end
  end
end
