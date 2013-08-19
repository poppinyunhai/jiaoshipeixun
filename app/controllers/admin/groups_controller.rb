class Admin::GroupsController < Admin::BaseController

  def index
    @groups = Group.all
    @current_nav_item = admin_groups_path
  end

  def new
    @group = Group.new
    @current_nav_item = new_admin_group_path
  end

  def create
    @group = Group.new(params[:group])

    respond_to do |format|
      if @group.save
        format.html { redirect_to admin_groups_path }
      else
        format.html { render action: "new" }
      end
    end
  end

  def edit
    @group = Group.find(params[:id])
    @current_nav_item = admin_groups_path
  end

  def update
    @group = Group.find(params[:id])

    respond_to do |format|
      if @group.update_attributes(params[:group])
        format.html { redirect_to admin_groups_path }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @group = Group.find(params[:id])
    @group.destroy

    respond_to do |format|
      format.html { redirect_to admin_groups_path }
      format.json { head :no_content }
    end
  end
end
