class CreateCheckouts < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      t.text :content

      t.timestamps
    end
  end
end
