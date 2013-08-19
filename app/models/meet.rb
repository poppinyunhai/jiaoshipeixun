class Meet < ActiveRecord::Base
  attr_accessible :company, :name, :phone, :statu_name, :qq, :statu_id
  belongs_to :statu
end
