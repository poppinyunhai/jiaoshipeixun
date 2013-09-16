class Admin::RecsController < Admin::BaseController
  def index
    @rec = Rec.page(params[:page]).per(40).order("id DESC")
  end

  def show
    @rec = Rec.find(params[:id])
  end

  def destroy
    @rec = Rec.find(params[:id])
    @rec.destroy
    redirect_to admin_recs_path
  end
end
