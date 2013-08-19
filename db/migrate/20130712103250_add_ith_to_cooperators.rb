class AddIthToCooperators < ActiveRecord::Migration
  def change
    add_column :cooperators, :ith, :integer
    add_index :cooperators, :ith

    Cooperator.find_each do |co|
      co.update_column(:ith, 1000)
    end
  end
end
