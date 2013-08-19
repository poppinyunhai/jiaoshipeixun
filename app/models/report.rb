class Report < ActiveRecord::Base
  attr_accessible :name, :avatar
  has_attached_file :avatar
end
