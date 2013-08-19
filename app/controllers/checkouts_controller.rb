class CheckoutsController < ApplicationController
  def index
    @checkout = Checkout.last
  end
end
