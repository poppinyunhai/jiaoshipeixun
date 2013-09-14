class Admin::CompaniesController < Admin::BaseController
  def index
    @company = Company.page(params[:page]).per(30).order("id DESC")
  end

  def edit
    @company = Company.find(params[:id])
  end

  def show
    @company = Company.find(params[:id])
  end

  def update
    @company = Company.find(params[:id])
    @company.update_attributes(params[:company])
    redirect_to admin_companies_path
  end

  def destroy
    @company = Company.find(params[:id])
    @company.destroy
  end
end
