class ZguansController < ApplicationController
  def index
    @skill = Skill.all
  end
end
