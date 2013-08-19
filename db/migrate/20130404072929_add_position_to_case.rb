class AddPositionToCase < ActiveRecord::Migration
  def change
    add_column :cases, :position, :integer
    execute "update cases set position = id"
  end
end
