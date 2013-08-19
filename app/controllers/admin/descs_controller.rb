class Admin::DescsController < Admin::BaseController
  def index
    @desc = Desc.last
  end

  def new
    @desc = Desc.new
  end

  def create
    @desc = Desc.create(params[:desc])
  end
end
