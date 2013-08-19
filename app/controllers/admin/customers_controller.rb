class Admin::CustomersController < Admin::BaseController

  def index
    @customers = Customer.all
    @current_nav_item = admin_customers_path
  end

  def edit
    @customer = Customer.find(params[:id])
    @current_nav_item = admin_customers_path
  end

  def update
    @customer = Customer.find(params[:id])

    respond_to do |format|
      if @customer.update_attributes(params[:customer])
        format.html { redirect_to admin_customers_path, notice: 'Customer was successfully update.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy

    respond_to do |format|
      format.html { redirect_to admin_customers_path }
    end
  end
end
