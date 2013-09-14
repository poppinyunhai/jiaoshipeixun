class AskillsController < ApplicationController
  before_filter :find_skill
  
  def index
    @askill = Askill.all   
  end

  def new
      
  end

  def find_skill
    @skill = params[:skill]
  end
end
