class Admin::CheckoutsController < Admin::BaseController
  def index
    @checkout = Checkout.last
  end

  def new
    @checkout = Checkout.new
  end

  def create
    @checkout = Checkout.create(params[:checkout])
    redirect_to admin_checkouts_path
  end

  def edit
    @checkout = Checkout.find(params[:id])
  end

  def update
    @checkout = Checkout.find(params[:id])
    @checkout.update_attributes(params[:checkout])
    redirect_to admin_checkouts_path
  end
end
