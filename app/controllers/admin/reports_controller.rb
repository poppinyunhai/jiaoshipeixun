class Admin::ReportsController < Admin::BaseController
  def index
    @report = Report.all
  end
  def show
    @report = Report.find(params[:id])
  end

  def destroy
    @report = Report.find(params[:id])
    @report.destroy
    redirect_to admin_reports_path
  end
end
