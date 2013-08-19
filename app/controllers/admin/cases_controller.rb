class Admin::CasesController < Admin::BaseController
  def index
    @cases = Case.all
    @current_nav_item = admin_cases_path
  end

  def new
    @case = Case.new
    @current_nav_item = new_admin_case_path

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def create
    @case = Case.new(params[:case])

    respond_to do |format|
      if @case.save
        format.html { redirect_to admin_cases_path, notice: 'Case was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def edit
    @case = Case.find(params[:id])
    @current_nav_item = admin_cases_path
  end

  def update
    @case = Case.find(params[:id])

    respond_to do |format|
      if @case.update_attributes(params[:case])
        format.html { redirect_to admin_cases_path, notice: 'Case was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
      end
    end
  end

  # DELETE /cases/1
  # DELETE /cases/1.json
  def destroy
    @case = Case.find(params[:id])
    @case.destroy

    respond_to do |format|
      format.html { redirect_to admin_cases_path }
      format.json { head :no_content }
    end
  end

    def move_up
      respond_to do |f|
        f.js{
          @case = Case.find(params[:id])
          @case.move_higher
        }
      end
    end

    def move_down
      respond_to do |f|
        f.js{
          @case = Case.find(params[:id])
          @case.move_lower
        }
      end
    end
end
