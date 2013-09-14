class CreateZguans < ActiveRecord::Migration
  def change
    create_table :zguans do |t|
      t.integer :skill_id
      t.integer :rec_id

      t.timestamps
    end
  end
end
