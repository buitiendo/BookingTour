class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by email: params[:session][:email].downcase
    if user&.authenticate params[:session][:password]
      log_in user
      redirect_to :root
    else
      flash.now[:danger] = t "app.login.invalid"
      render :new
    end
  end

  def destroy
    log_out
    redirect_to :root
  end
end
