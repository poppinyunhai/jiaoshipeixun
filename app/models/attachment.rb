class Attachment < ActiveRecord::Base
  attr_accessible :image
  mount_uploader :image, AssetUploader
end
