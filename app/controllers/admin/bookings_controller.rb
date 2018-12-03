class Admin::BookingsController < Admin::BaseController
  before_action :load_booking, except: %i(new index create)
  def index; end

  def new
    @booking = Booking.new
  end

  def create; end

  def update
    if @booking.update booking_params
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

  def booking_params
    params.require(:booking).permit :status, :number_people
  end

  def load_booking
    @booking = booking.find_by id: params[:id]
    return if @booking.present?
    flash[:danger] = t "not_booking"
    redirect_to root_path
  end
end
