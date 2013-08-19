class CasesController < ApplicationController
  layout "clean_canvas"
  # GET /cases
  # GET /cases.json
  def index
    @cases = Case.all
    @current_nav_item = cases_path

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cases }
    end
  end

end
