class Admin::WorkbasesController < Admin::BaseController
  def index
    @workbases = Workbase.all
  end

  def new
    @workbase = Workbase.new
  end

  def create
    @workbase = Workbase.new(params[:workbase])

    if @workbase.save
      redirect_to admin_workbases_path
    else
      render :new
    end
  end

  def destroy
    @workbase = Workbase.find(params[:id])

    if @workbase.destroy
      redirect_to admin_workbases_path
    else
      redirect_to root_path
    end
  end
end
