class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.integer :user_id
      t.string :name
      t.string :addr
      t.string :person
      t.string :tell
      t.integer :phone
      t.string :email
      t.boolean :check
      t.timestamps
    end
  end
end
