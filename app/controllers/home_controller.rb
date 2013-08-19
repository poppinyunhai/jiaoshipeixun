class HomeController < ApplicationController
  layout 'clean_canvas'

  def index
    @cooperators = Cooperator.order('ith ASC').all
    @current_nav_item = root_path
    @notice = Notice.last
  end

  def syllabus
  end

  def career
  end


end
