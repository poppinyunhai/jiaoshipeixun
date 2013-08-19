class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.text :background
      t.text :question
      t.text :feature

      t.timestamps
    end
  end
end
