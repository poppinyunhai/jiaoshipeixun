class Particular < ActiveRecord::Base
  attr_accessible :age, :check, :content, :name, :role, :sex, :work, :user_id
  validates_presence_of :age
  validates_presence_of :content
  validates_presence_of :name
  validates_presence_of :sex
  validates_presence_of :work
end
