class Case < ActiveRecord::Base
  attr_accessible :content, :image, :name
  mount_uploader :image, CaseUploader
  default_scope order('position desc')

  after_create :set_position

  def set_position
    self.position = 0
    self.save
  end
  def move_higher
    self.position = self.position + 1
    self.save
  end

  def move_lower
    self.position = self.position - 1 if self.position > 0
    self.save
  end
end
