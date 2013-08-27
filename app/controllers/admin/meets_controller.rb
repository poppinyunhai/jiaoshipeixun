class Admin::MeetsController < Admin::BaseController
  def index
    @meet = Meet.all
  end

  def destroy
    @meet = Meet.find(params[:id])
    @meet.destroy
    redirect_to admin_meets_path
  end

end
