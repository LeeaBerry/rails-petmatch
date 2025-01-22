class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings.includes(:pet) # Assuming a `current_user` method
  end
end
