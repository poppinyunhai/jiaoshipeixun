class QqToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :qq, :string
  end
end
