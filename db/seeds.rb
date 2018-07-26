

puts "Deleting previous flats..."
Flat.destroy_all
puts "Creating new flats..."

10.times do

  Flat.create(name: Faker::HitchhikersGuideToTheGalaxy.location,
              address: Faker::Address.state,
              description: ['Whole Loft', 'Whole Apartment', 'Single room', 'Whole house'].sample,
              price_per_night: Faker::Number.between(200, 400),
              number_of_guests: Faker::Number.between(1, 4)
              )
end

puts "Created 10 new flats!"
