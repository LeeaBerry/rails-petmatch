class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :pet

  validates :booking_startdate, :booking_enddate, presence: true
  validates :booking_startdate, comparison: { less_than: :end_date, message: "must be before the end date" }
end
