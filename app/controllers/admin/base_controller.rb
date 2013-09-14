class Admin::BaseController < ApplicationController
  before_filter :authenticate_admin!
  def after_sign_in_path_for(resource_or_scope)
    admin_root_path
  end
  layout "admin"
end
