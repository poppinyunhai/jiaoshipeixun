class ApplicationController < ActionController::Base
  protect_from_forgery
  def after_sign_in_path_for(resource_or_scope)
    if current_user
      roles_path
    elsif current_admin.email == "admin@163.com"
      admin_root_path
    end
  end
  layout 'clean_canvas'
end
