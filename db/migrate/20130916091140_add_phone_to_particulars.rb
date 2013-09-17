class AddPhoneToParticulars < ActiveRecord::Migration
  def change
    add_column :particulars, :phone, :integer
  end
end
