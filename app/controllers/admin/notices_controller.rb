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

  def edit
    @notice = Notice.find(params[:id])
  end

  def update
    @notice = Notice.find(params[:id])
    @notice.update_attributes(params[:notice])
    redirect_to admin_notices_path
  end

  def destroy
    
  end
end
