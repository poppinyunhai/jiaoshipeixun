class CreateParticulars < ActiveRecord::Migration
  def change
    create_table :particulars do |t|
      t.string :role
      t.integer :age
      t.string :name
      t.string :sex
      t.string :work
      t.integer :work
      t.text :content
      t.boolean :check

      t.timestamps
    end
  end
end
