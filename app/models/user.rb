class User < ApplicationRecord
  has_many :pets
  has_many :bookings

  validates :user_name, presence: true
  validates :email_address, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
end
