class MeetsController < ApplicationController
  def new
    @meet = Meet.new
    @desc = Desc.last
  end

  def create
    @meet = Meet.create(params[:meet])
    redirect_to root_path
  end
end
