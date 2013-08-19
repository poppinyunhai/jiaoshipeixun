class ReportsController < ApplicationController
  def new
    @report = Report.new
  end

  def create
    @report = Report.create(params[:report])
    redirect_to root_path
  end

end
