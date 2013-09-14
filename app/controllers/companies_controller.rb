class CompaniesController < ApplicationController
  def new
    @company = Company.new
  end

  def create
    if Company.where(:user_id => current_user.id).count == 0
      @company = Company.new(params[:company])
      @company.user_id = current_user.id
      @company.save
      redirect_to yan_path
    elsif Company.where(:user_id => current_user.id).first.check
      redirect_to guans_path
    else
      redirect_to yan_path
    end
  end


end
