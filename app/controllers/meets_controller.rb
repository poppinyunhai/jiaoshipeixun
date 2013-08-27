class MeetsController < ApplicationController
  def new
    @meet = Meet.new
    @desc = Desc.last
  end

  def create
    @meet = Meet.create(params[:meet])
    if @meet.save
      redirect_to success_path
    else
      redirect_to err_path
    end
  end
end
