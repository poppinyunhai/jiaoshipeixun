class Group < ActiveRecord::Base
  has_many :customers
  attr_accessible :group_no, :specific_time, :time
end
