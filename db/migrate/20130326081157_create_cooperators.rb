class CreateCooperators < ActiveRecord::Migration
  def change
    create_table :cooperators do |t|
      t.string :name

      t.timestamps
    end
  end
end
