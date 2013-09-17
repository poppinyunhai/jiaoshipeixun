class Admin::ParticularsController < Admin::BaseController
  def index
    @particular = Particular.page(params[:page]).per(40).order("id DESC")
  end

  def show
    @particular = Particular.find(params[:id])
  end

  def destroy
    @particular = Particular.find(params[:id])
    @particular.destroy
    redirect_to admin_particulars_path
  end
end
