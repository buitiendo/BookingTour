class Admin::UsersController < Admin::BaseController
  before_action :load_user, except: %i(new index create)

  def index; end

  def new
    @user = User.new
  end

  def create; end

  def edit
    @user = User.new
  end

  def update
    if @user.update user_params
      flash[:success] = t "update_success"
      redirect_to root_path
    else
      render :edit
    end
  end

  def show; end

  def edit; end

  def destroy; end

  private

  def user_params
    params.require(:user).permit :name, :address, :email, :phone, 
      :password, :password_confirmation
  end

  def load_user
    @user = User.find_by id: params[:id]
    return if @user.present?
    flash[:danger] = t "not_user"
    redirect_to root_path
  end
end
