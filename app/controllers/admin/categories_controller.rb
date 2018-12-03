class Admin::CategoriesController < Admin::BaseController
  before_action :load_cate, except: %i(new index create)
  def index; end

  def new
    @category = Category.new
  end

  def create; end

  def update
    if @category.update category_params
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

  def category_params
    params.require(:category).permit :name, :parent_id
  end

  def load_cate
    @category = Category.find_by id: params[:id]
    return if @category.present?
    flash[:danger] = t "not_category"
    redirect_to root_path
  end
end
