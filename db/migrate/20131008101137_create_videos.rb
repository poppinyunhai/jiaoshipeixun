class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.text :content

      t.timestamps
    end
  end
end
