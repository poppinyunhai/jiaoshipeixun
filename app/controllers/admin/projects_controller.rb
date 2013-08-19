class Admin::ProjectsController < Admin::BaseController
  def index
    @projects = Project.all
    @current_nav_item = admin_projects_path
  end

  def edit
    @project = Project.find(params[:id])
    @current_nav_item = admin_projects_path
  end

  def update
    @project = Project.find(params[:id])

    respond_to do |format|
      if @project.update_attributes(params[:project])
        format.html { redirect_to admin_projects_path, notice: 'Project was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

end
