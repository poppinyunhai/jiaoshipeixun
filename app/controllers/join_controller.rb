class JoinController < ApplicationController
  layout 'clean_canvas'

  def join_us
    @customer = Customer.new
    @groups = Group.all
  end
end
