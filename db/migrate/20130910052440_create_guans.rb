class CreateGuans < ActiveRecord::Migration
  def change
    create_table :guans do |t|
      t.integer :user_id
      t.integer :skill_id
      t.integer :askill_id

      t.timestamps
    end
  end
end
