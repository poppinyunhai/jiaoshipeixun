require 'test_helper'

class Admin::NoticesControllerTest < ActionController::TestCase
  def index
    @notice = Notice.last
    format.html { redirect_to admin_cases_path }
  end

  def new
    @notice = Notice.new
    format.html { redirect_to admin_cases_path }
  end

  def create
    @notice = Notice.create(paramsp[:notice])
  end

  def distroy
    @notice = Notice.find(params[:id])
    @notice.distroy
  end

  def edit
    @notice = Notice.find(params[:id])
  end

  def update
    @notice = Notice.find(params[:id])
    @notice = Notice.update_attributes(params[:notice])
    redirect_to admin_notices_path
  end
end
