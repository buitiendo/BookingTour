class Admin::BaseController < ApplicationController
  layout "admin/layouts/application"
  before_action :admin_user
end
