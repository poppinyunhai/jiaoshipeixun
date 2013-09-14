class ToudisController < ApplicationController
  def create
    @toudi = Toudi.create(:user_id => current_user.id, :rec_user_id => params[:rec_user_id] )
  end
end
