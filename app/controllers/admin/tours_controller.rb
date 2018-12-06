class Admin::ToursController < Admin::BaseController
  before_action :load_tour, except: %i(new index create)
  def index
    @q = Tour.ransack params["q"]
    @tours = @q.result(distinct: true)
      .select_custom.show_tour_desc
      .page(params[:page]).per Settings.page.page_number_user
  end

  def show
    respond_to do |format|
      format.js
    end
  end

  def update
    if @tour.close?
      @tour.update! status: "open"
      redirect_to admin_tours_path
    elsif @tour.open?
      @tour.update! status: "close"
      redirect_to admin_tours_path
    end
  end

  private

  def load_tour
    @tour = Tour.find_by id: params[:id]
    return if @tour.present?
    flash[:danger] = t "tours.not_tour"
    redirect_to root_path
  end
end
