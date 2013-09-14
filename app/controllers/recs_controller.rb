class RecsController < ApplicationController
  before_filter :find_skill
  def index
    @rec = Rec.all #分页
  end

  def show
    @rec = Rec.find(params[:id])
  end

  def new
    @rec = Rec.new
  end

  def create
    @rec = Rec.new(params[:rec])
    @rec.user_id = current_user.id
    @rec.save
    @skill = @skill.split(',')
    @skill.each do |s|
      Zguan.create(:skill_id => s.to_i, :rec_id => @rec.id)
    end
    if @rec.save
      redirect_to asuccess_path
    else
      redirect_to root
    end
  end

  def search
    @guan = Zguan.where(:skill_id => params[:skill]).all
  end

  def toudi
      if Toudi.where(:rec_user_id => params[:rec_user_id],:user_id => current_user.id).empty?
        @tou = Toudi.create(:user_id => current_user.id, :rec_user_id => params[:rec_user_id] )
        redirect_to tsuccess_path
      elsif Toudi.where(:rec_user_id => params[:rec_user_id],:rec_user_id => params[:rec_user_id])
        redirect_to terror_path
      end   

    # if Toudi.where(:rec_user_id => params[:rec_user_id]).first.user_id == current_user.id 
    #   redirect_to terror_path
    # else
    #   @tou = Toudi.create(:user_id => current_user.id, :rec_user_id => params[:rec_user_id] )
    #     
    # end
    

  end

  def find_skill
    @skill = params[:skill]
  end
end
