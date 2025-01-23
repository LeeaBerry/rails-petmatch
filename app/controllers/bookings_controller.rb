class BookingsController < ApplicationController

  def index
    @bookings = current_user.bookings
  end

  def create
    # Create a new booking for the current user
    @booking = current_user.bookings.new(booking_params)
    @booking.pet_id = params[:pet_id] # Associate the booking with a specific pet

    if @booking.save
      redirect_to bookings_path, notice: "Booking was successfully created!"
    else
      render :new, alert: "There was an error creating the booking."
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:booking_startdate, :booking_enddate)
  end

end
