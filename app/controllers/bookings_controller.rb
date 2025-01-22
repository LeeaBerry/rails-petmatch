class BookingsController < ApplicationController
  before_action :set_pet, only: [:new, :create]

  def new
    @booking = Booking.new
    @booking.user = User.first
  end

  def create
    @booking = @pet.bookings.build(booking_params)
    @booking.user = current_user # Assuming a `current_user` method

    if @booking.save
      redirect_to pet_path(@pet), notice: "Booking confirmed!"
    else
      render :new, alert: "Unable to book. Please try again."
    end
  end

  def index
    @bookings = current_user.bookings # List bookings for the logged-in user
  end

  private

  def set_pet
    @pet = Pet.find(params[:pet_id])
  end

  def booking_params
    params.require(:booking).permit(:booking_startdate, :booking_enddate)
  end
end
