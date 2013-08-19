class Admin::TeachersController < Admin::BaseController

  def index
    @teachers = Teacher.all
    @current_nav_item = admin_teachers_path
  end

  def new
    @teacher = Teacher.new
    @current_nav_item = new_admin_teacher_path
  end

  def create
    @teacher = Teacher.new(params[:teacher])

    respond_to do |format|
      if @teacher.save
        format.html { redirect_to admin_teachers_path, notice: 'Teacher was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def edit
    @teacher = Teacher.find(params[:id])
    @current_nav_item = admin_teachers_path
  end

  def update
    @teacher = Teacher.find(params[:id])

    respond_to do |format|
      if @teacher.update_attributes(params[:teacher])
        format.html { redirect_to admin_teachers_path, notice: 'Teacher was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @teacher = Teacher.find(params[:id])
    @teacher.destroy

    respond_to do |format|
      format.html { redirect_to admin_teachers_path }
      format.json { head :no_content }
    end
  end

  def move_up
    respond_to do |f|
      f.js{
        @teacher = Teacher.find(params[:id])
        @teacher.move_higher
      }
    end
  end

  def move_down
    respond_to do |f|
      f.js{
        @teacher = Teacher.find(params[:id])
        @teacher.move_lower
      }
    end
  end

end
