class TeachersController < ApplicationController
  layout "clean_canvas"
  # GET /teachers
  # GET /teachers.json
  def index
    @teachers = Teacher.all
    @current_nav_item = teachers_path

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @teachers }
    end
  end

end
