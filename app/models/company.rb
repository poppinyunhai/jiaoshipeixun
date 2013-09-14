class Company < ActiveRecord::Base
  attr_accessible :addr, :email, :name, :person, :phone, :tell, :user_id, :check
  validates_presence_of :addr
  validates_presence_of :email
  validates_presence_of :name
  validates_presence_of :person
end
