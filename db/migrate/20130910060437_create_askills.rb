class CreateAskills < ActiveRecord::Migration
  def change
    create_table :askills do |t|
      t.string :name

      t.timestamps
    end
  end
end
