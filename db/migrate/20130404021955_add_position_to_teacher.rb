class AddPositionToTeacher < ActiveRecord::Migration
  def change
    add_column :teachers, :position, :integer
    execute "update teachers set position = id"
  end
end
