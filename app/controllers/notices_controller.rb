class NoticesController < ApplicationController
  def index
    @notice = Notice.last
  end

  def new 
    @notice = Notice.new
  end

  def create
    @notice = Notice.create(params[:notice])
    redirect_to new
  end

  

end
