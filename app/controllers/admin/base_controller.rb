class Admin::BaseController < ApplicationController
  layout "admin/layouts/application"
  before_action :admin_user

  def admin_user
    return if current_user && current_user.admin?
    flash[:danger] = t "not_access"
    redirect_to root_path
  end
end
