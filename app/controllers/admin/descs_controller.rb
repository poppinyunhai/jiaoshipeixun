class Admin::DescsController < Admin::BaseController
  def index
    @desc = Desc.last
  end

  def new
    @desc = Desc.new
  end

  def create
    @desc = Desc.create(params[:desc])
    redirect_to admin_descs_path
  end

  def edit
    @desc = Desc.find(params[:id])
  end

  def update
    @desc = Desc.find(params[:id])
    @desc.update_attributes(params[:desc])
    redirect_to admin_descs_path
  end
end
