class Admin::CooperatorsController < Admin::BaseController
  def index
    @cooperators = Cooperator.all
    @current_nav_item = admin_cooperators_path
  end

  def new
    @cooperator = Cooperator.new
    @current_nav_item = new_admin_cooperator_path
  end

  def create
    @cooperator = Cooperator.new(params[:cooperator])

    respond_to do |format|
      if @cooperator.save
        format.html { redirect_to admin_cooperators_path, notice: "Cooperator was created successfully." }
      else
        format.html { render action: "new" }
      end
    end
  end

  def edit
    @cooperator = Cooperator.find(params[:id])
    @current_nav_item = admin_cooperators_path
  end

  def update
    @cooperator = Cooperator.find(params[:id])

    respond_to do |format|
      if @cooperator.update_attributes(params[:cooperator])
        format.html { redirect_to admin_cooperators_path, notice: 'Cooperator was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @cooperator = Cooperator.find(params[:id])
    @cooperator.destroy

    respond_to do |format|
      format.html { redirect_to admin_cooperators_path }
      format.json { head :no_content }
    end
  end

end
