class GuansController < ApplicationController
  before_filter :check_user, :only => [:index]
  def index
    @particular = Particular.page(params[:page]).per(30).order("id DESC")
  end

  def search
    @guan = Guan.where(:skill_id => params[:skill], :askill_id => params[:askill]).all
  end

  def toudi
    @toudi = Toudi.where(:rec_user_id => current_user.id).page(params[:page]).per(50).order("id DESC")
  end






  def check_user
    if signed_in? and Company.where(:user_id => current_user.id).count == 0
      redirect_to roles_path
    elsif signed_in? and Company.where(:user_id => current_user.id).first.check
      render 'index'
    else
      redirect_to new_user_session_path
    end
  end
end
