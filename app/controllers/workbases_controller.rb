class WorkbasesController < ApplicationController
  layout 'clean_canvas'

  def index
    @workbases = Workbase.all
  end
end
