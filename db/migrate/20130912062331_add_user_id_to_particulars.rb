class AddUserIdToParticulars < ActiveRecord::Migration
  def change
    add_column :particulars, :user_id, :integer
  end
end
