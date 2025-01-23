class Pet < ApplicationRecord
  belongs_to :user

  has_many :bookings

  validates :pet_name, :pet_breed, :pet_type, :pet_region, presence: true

end
