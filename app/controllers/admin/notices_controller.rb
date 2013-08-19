class Admin::NoticesController < Admin::BaseController
  def index
    @notice = Notice.last
  end

  def new
    @notice = Notice.new 
  end

  def create
    @notice = Notice.create(params[:notice])
    redirect_to admin_notices_path
  end

  def destroy
    
  end
end
