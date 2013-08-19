class Statu < ActiveRecord::Base
  attr_accessible :name
  has_many :meets
end
