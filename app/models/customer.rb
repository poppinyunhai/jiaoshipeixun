class Customer < ActiveRecord::Base
  belongs_to :group
  attr_accessible :email, :name, :phone, :group_id, :qq
end
