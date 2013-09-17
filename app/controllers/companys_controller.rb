class CompanysController < ApplicationController
  def new
    @com = Company.new
  end

  def create
    @com = Company.create(params[:com])

    redirect_to root_path
  end
end
