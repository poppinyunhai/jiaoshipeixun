class Admin::MeetsController < Admin::BaseController
  def index
    @meet = Meet.all
  end

end
