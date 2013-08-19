class AddStatuIdToMeets < ActiveRecord::Migration
  def change
    add_column :meets, :statu_id, :integer
  end
end
