class BookingsController < ApplicationController
  before_action :find_tour, only: %i(create)
  def create
    @booking = @tour.bookings.build booking_params
    if @booking.save
      flash[:success] = t "app.booking.booking_success"
      redirect_to @tour
    else
      flash[:danger] = t "app.booking.booking_fail"
      render "tours/show"
    end
  end

  private

  def booking_params
    params.require(:booking).permit :user_id, :status, :number_people
  end

  def find_tour
    @tour = Tour.find_by id: params[:tour_id]
    return if @tour
    flash[:danger] = t "tours.not_tour"
    redirect_to :root
  end
end
