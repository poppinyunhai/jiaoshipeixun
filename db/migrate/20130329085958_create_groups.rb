class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :group_no
      t.string :time
      t.text :specific_time

      t.timestamps
    end
  end
end
