class ReportsController < ApplicationController
  def new
    @report = Report.new
  end

  def create
    @report = Report.create(params[:report])
    if save
      redirect_to success_path
    else
      redirect_to err_path
    end
  end

end
