class CreateWorkbases < ActiveRecord::Migration
  def change
    create_table :workbases do |t|
      t.string :title
      t.string :asset

      t.timestamps
    end
  end
end
