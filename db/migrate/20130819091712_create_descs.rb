class CreateDescs < ActiveRecord::Migration
  def change
    create_table :descs do |t|
      t.text :content

      t.timestamps
    end
  end
end
