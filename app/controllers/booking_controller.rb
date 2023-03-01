class BookingController < ApplicationController
  # def new
  #   @booking = Booking.new
  # end

  def create
    @booking = Booking.new(params[:booking])
  end

  # private

  # def booking_params
  #   params.require(:booking).permit(:name, :email, :password, :password_)
  # end
end
