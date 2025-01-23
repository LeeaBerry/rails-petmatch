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
  { username: "jdoe1", region: "London", first_name: "John", last_name: "Doe", email: "jdoe1@example.com", password: "123456"},
  { username: "asmith2", region: "Manchester", first_name: "Anna", last_name: "Smith", email: "asmith2@example.com", password: "123456" },
  { username: "bwilliams3", region: "Birmingham", first_name: "Brian", last_name: "Williams", email: "bwilliams3@example.com", password: "123456" },
  { username: "cjohnson4", region: "Glasgow", first_name: "Catherine", last_name: "Johnson", email: "cjohnson4@example.com", password: "123456" },
  { username: "dthomas5", region: "Liverpool", first_name: "David", last_name: "Thomas", email: "dthomas5@example.com", password: "123456" },
  { username: "emiller6", region: "Leeds", first_name: "Emma", last_name: "Miller", email: "emiller6@example.com", password: "123456" },
  { username: "fwilson7", region: "Bristol", first_name: "Frank", last_name: "Wilson", email: "fwilson7@example.com", password: "123456" },
  { username: "gmoore8", region: "Sheffield", first_name: "Grace", last_name: "Moore", email: "gmoore8@example.com", password: "123456" },
  { username: "hlee9", region: "Edinburgh", first_name: "Henry", last_name: "Lee", email: "hlee9@example.com", password: "123456" },
  { username: "ijones10", region: "Cardiff", first_name: "Isabel", last_name: "Jones", email: "ijones10@example.com", password: "123456" }
]
users.each do |user|
  User.create!(user)
end

pets = [
  { pet_name: "Buddy", user: User.all[0], pet_type: "Dog", pet_breed: "Golden Retriever", pet_description: "Friendly and energetic", pet_region: "London", pet_image: "https://i0.wp.com/brucesdoggydaycare.co.uk/wp-content/uploads/2025/01/1985c029d583778314bbd1add6c345cf-1200x0-c-default.jpg?ssl=1" },
  { pet_name: "Mittens", user: User.all[1], pet_type: "Cat", pet_breed: "Siamese", pet_description: "Playful and curious", pet_region: "Manchester", pet_image: "https://www.thesprucepets.com/thmb/kDcQES0eO7DnfjZ5CBmkfOrxnyg=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/facts-about-siamese-cats-4173491-hero-5a607df9e57b40a58c803a76859b6694.jpg" },
  { pet_name: "Charlie", user: User.all[2], pet_type: "Dog", pet_breed: "Beagle", pet_description: "Loyal and friendly", pet_region: "Birmingham", pet_image: "https://www.beaglewelfare.org.uk/wp-content/uploads/2024/10/IMG_0706-2-2.jpeg" },
  { pet_name: "Luna", user: User.all[3], pet_type: "Cat", pet_breed: "Bengal", pet_description: "Active and playful", pet_region: "Glasgow", pet_image: "https://preview.redd.it/aj4lntrektk11.jpg?auto=webp&s=fb2524f268cec9e4d3d3aee7efd72ebb2bfbb1ce" },
  { pet_name: "Max", user: User.all[4], pet_type: "Dog", pet_breed: "Labrador", pet_description: "Gentle and friendly", pet_region: "Liverpool", pet_image: "https://i0.wp.com/brucesdoggydaycare.co.uk/wp-content/uploads/2025/01/e2438d0831f29bfc60739ba9d6494a96-1200x0-c-default.jpg?ssl=1" },
  { pet_name: "Coco", user: User.all[5], pet_type: "Bird", pet_breed: "Cockatiel", pet_description: "Chirpy and colorful", pet_region: "Leeds", pet_image: "https://static.wixstatic.com/media/630c39_646cdf504ba34dc689b85ef57bf503da~mv2.jpg/v1/fill/w_980,h_1020,al_c,q_85,usm_0.66_1.00_0.01,enc_avif,quality_auto/630c39_646cdf504ba34dc689b85ef57bf503da~mv2.jpg" },
  { pet_name: "Daisy", user: User.all[6], pet_type: "Dog", pet_breed: "Poodle", pet_description: "Intelligent and active", pet_region: "Bristol", pet_image: "https://image.petmd.com/files/styles/978x550/public/2023-01/toy-poodle.jpg?w=2048&q=75" },
  { pet_name: "Shadow", user: User.all[7], pet_type: "Cat", pet_breed: "Persian", pet_description: "Quiet and affectionate", pet_region: "Sheffield", pet_image: "https://www.thesprucepets.com/thmb/TU314sIYpY5NNX0trZmLBpbflb4=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/persian-cats-gallery-4121944-hero-f5c237b8c6404655afb1e1bbae219ba5.jpg" },
  { pet_name: "Bella", user: User.all[8], pet_type: "Dog", pet_breed: "German Shepherd", pet_description: "Protective and loyal", pet_region: "Edinburgh", pet_image: "https://petzpark.com.au/cdn/shop/articles/German-Shepherd-Puppies_900x.jpg?v=1673894491" },
  { pet_name: "Oliver", user: User.all[9], pet_type: "Cat", pet_breed: "Ragdoll", pet_description: "Relaxed and friendly", pet_region: "Cardiff", pet_image: "https://images.litter-robot.com/media/magefan_blog/david-brooke-ragdoll_copy.jpg" }
]
pets.each do |pet|
  Pet.create!(pet)
end

bookings = [
  { pet: Pet.all[0], user: User.all[1], booking_startdate: Date.today, booking_enddate: Date.today+1 },
  # { pet: Pet.all[1], user: User.all[2], booking_startdate: 2025-02-05, booking_enddate: 2025-02-10 },
  # { pet: Pet.all[2], user: User.all[3], booking_startdate: 2025-02-10, booking_enddate: 2025-02-15 },
  # { pet: Pet.all[3], user: User.all[4], booking_startdate: 2025-02-15, booking_enddate: 2025-02-20 },
  # { pet: Pet.all[4], user: User.all[5], booking_startdate: 2025-02-20, booking_enddate: 2025-02-25 },
  # { pet: Pet.all[5], user: User.all[6], booking_startdate: 2025-02-25, booking_enddate: 2025-03-01 },
  # { pet: Pet.all[6], user: User.all[7], booking_startdate: 2025-03-01, booking_enddate: 2025-03-05 },
  # { pet: Pet.all[7], user: User.all[8], booking_startdate: 2025-03-05, booking_enddate: 2025-03-10 },
  # { pet: Pet.all[8], user: User.all[9], booking_startdate: 2025-03-10, booking_enddate: 2025-03-15 },
  # { pet: Pet.all[9], user: User.all[0], booking_startdate: 2025-03-15, booking_enddate: 2025-03-20 }
]
bookings.each do |booking|
  Booking.create!(booking)
end
