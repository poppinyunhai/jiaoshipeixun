class CreateMeets < ActiveRecord::Migration
  def change
    create_table :meets do |t|
      t.string :name
      t.integer :phone
      t.string :statu_name
      t.string :company
      t.integer :qq

      t.timestamps
    end
  end
end
