class CooperatorsController < ApplicationController

  def index
    @cooperators = Cooperator.order('ith ASC').all
  end

  def new
    @cooperator = Cooperator.new
  end

  def create
    @cooperator = Cooperator.new(params[:cooperator])

    respond_to do |format|
      if @cooperator.save
        format.html { redirect_to cooperators_path, notice: 'created successfully.' }
      else
        format.html { render action: "new"}
      end
    end
  end

  def show
    @cooperator = Cooperator.find(params[:id])
  end

end
