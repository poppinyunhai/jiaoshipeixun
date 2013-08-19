class Workbase < ActiveRecord::Base
  attr_accessible :asset, :title

  validates :title, :asset, :presence => true

  mount_uploader :asset, WorkbaseUploader
end
