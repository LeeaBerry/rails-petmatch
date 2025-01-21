# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Booking.destroy_all
Pet.destroy_all
User.destroy_all

users = [
  { user_name: "jdoe1", region: "London", first_name: "John", last_name: "Doe", email_address: "jdoe1@example.com" },
  { user_name: "asmith2", region: "Manchester", first_name: "Anna", last_name: "Smith", email_address: "asmith2@example.com" },
  { user_name: "bwilliams3", region: "Birmingham", first_name: "Brian", last_name: "Williams", email_address: "bwilliams3@example.com" },
  { user_name: "cjohnson4", region: "Glasgow", first_name: "Catherine", last_name: "Johnson", email_address: "cjohnson4@example.com" },
  { user_name: "dthomas5", region: "Liverpool", first_name: "David", last_name: "Thomas", email_address: "dthomas5@example.com" },
  { user_name: "emiller6", region: "Leeds", first_name: "Emma", last_name: "Miller", email_address: "emiller6@example.com" },
  { user_name: "fwilson7", region: "Bristol", first_name: "Frank", last_name: "Wilson", email_address: "fwilson7@example.com" },
  { user_name: "gmoore8", region: "Sheffield", first_name: "Grace", last_name: "Moore", email_address: "gmoore8@example.com" },
  { user_name: "hlee9", region: "Edinburgh", first_name: "Henry", last_name: "Lee", email_address: "hlee9@example.com" },
  { user_name: "ijones10", region: "Cardiff", first_name: "Isabel", last_name: "Jones", email_address: "ijones10@example.com" }
]
users.each do |user|
  User.create!(user)
end

pets = [
  { pet_name: "Buddy", user: User.all[0], pet_type: "Dog", pet_breed: "Golden Retriever", pet_description: "Friendly and energetic", pet_region: "London", pet_image: "https://via.placeholder.com/150/FFCC00" },
  { pet_name: "Mittens", user: User.all[1], pet_type: "Cat", pet_breed: "Siamese", pet_description: "Playful and curious", pet_region: "Manchester", pet_image: "https://via.placeholder.com/150/FF0000" },
  { pet_name: "Charlie", user: User.all[2], pet_type: "Dog", pet_breed: "Beagle", pet_description: "Loyal and friendly", pet_region: "Birmingham", pet_image: "https://via.placeholder.com/150/FF9966" },
  { pet_name: "Luna", user: User.all[3], pet_type: "Cat", pet_breed: "Bengal", pet_description: "Active and playful", pet_region: "Glasgow", pet_image: "https://via.placeholder.com/150/3366FF" },
  { pet_name: "Max", user: User.all[4], pet_type: "Dog", pet_breed: "Labrador", pet_description: "Gentle and friendly", pet_region: "Liverpool", pet_image: "https://via.placeholder.com/150/33FF66" },
  { pet_name: "Coco", user: User.all[5], pet_type: "Bird", pet_breed: "Cockatiel", pet_description: "Chirpy and colorful", pet_region: "Leeds", pet_image: "https://via.placeholder.com/150/FFFF00" },
  { pet_name: "Daisy", user: User.all[6], pet_type: "Dog", pet_breed: "Poodle", pet_description: "Intelligent and active", pet_region: "Bristol", pet_image: "https://via.placeholder.com/150/CC66FF" },
  { pet_name: "Shadow", user: User.all[7], pet_type: "Cat", pet_breed: "Persian", pet_description: "Quiet and affectionate", pet_region: "Sheffield", pet_image: "https://via.placeholder.com/150/666666" },
  { pet_name: "Bella", user: User.all[8], pet_type: "Dog", pet_breed: "German Shepherd", pet_description: "Protective and loyal", pet_region: "Edinburgh", pet_image: "https://via.placeholder.com/150/FF3333" },
  { pet_name: "Oliver", user: User.all[9], pet_type: "Cat", pet_breed: "Ragdoll", pet_description: "Relaxed and friendly", pet_region: "Cardiff", pet_image: "https://via.placeholder.com/150/00CCCC" }
]
pets.each do |pet|
  Pet.create!(pet)
end

bookings = [
  { pet: Pet.all[0], user: User.all[1], booking_startdate: "2025-02-01", booking_enddate: "2025-02-07" },
  { pet: Pet.all[1], user: User.all[2], booking_startdate: "2025-02-05", booking_enddate: "2025-02-10" },
  { pet: Pet.all[2], user: User.all[3], booking_startdate: "2025-02-10", booking_enddate: "2025-02-15" },
  { pet: Pet.all[3], user: User.all[4], booking_startdate: "2025-02-15", booking_enddate: "2025-02-20" },
  { pet: Pet.all[4], user: User.all[5], booking_startdate: "2025-02-20", booking_enddate: "2025-02-25" },
  { pet: Pet.all[5], user: User.all[6], booking_startdate: "2025-02-25", booking_enddate: "2025-03-01" },
  { pet: Pet.all[6], user: User.all[7], booking_startdate: "2025-03-01", booking_enddate: "2025-03-05" },
  { pet: Pet.all[7], user: User.all[8], booking_startdate: "2025-03-05", booking_enddate: "2025-03-10" },
  { pet: Pet.all[8], user: User.all[9], booking_startdate: "2025-03-10", booking_enddate: "2025-03-15" },
  { pet: Pet.all[9], user: User.all[0], booking_startdate: "2025-03-15", booking_enddate: "2025-03-20" }
]
bookings.each do |booking|
  Booking.create!(booking)
end
