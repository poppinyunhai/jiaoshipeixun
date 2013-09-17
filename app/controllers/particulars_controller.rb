class ParticularsController < ApplicationController
  before_filter :find_skill
  def new
    @particular = Particular.new

  end

  def create
    @particular = Particular.new(params[:particular])
    @particular.user_id = current_user.id
    @particular.save
    @skill = @skill.split(',')
    @askill = @askill.split(',')
    @skill.each do |s|
      @askill.each do |a|
        @guan = Guan.create(:askill_id => a.to_i, :skill_id => s.to_i, :user_id => current_user.id)
      end
    end

    if @particular.save
      redirect_to asuccess_path
    else
      render 'new'
    end

  end

  def show
    user_id = params[:id]
    @particular = Particular.where(:user_id => user_id)
  end

  def edit
    @particular = Particular.where(user_id = current_user.id).last
  end

  def update
    @particular = Particular.where(user_id = current_user.id).last
    @particular.update_attributes(params[:particular])
    redirect_to asuccess_path
  end


  def index
    @particular = Particular.page(params[:page]).per(30).order("id DESC")
  end

  def find_skill
    @skill = params[:skill]
    @askill = params[:askill]
  end
end
