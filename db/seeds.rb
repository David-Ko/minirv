# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Trailer.destroy_all
    number = Faker::Number.number(4)
    name = Faker::Name.first_name
    random = Faker::Number.between(1, 5)
    cooktop = Faker::Number.between(1, 4)
    bathroom = Faker::Number.between(1, 2)
    description = Faker::GreekPhilosophers.quote
    
10.times do
    t = Trailer.create(
        name: "#{number.to_s} #{name}",
        image: "https://www.pexels.com/photo/no-person-landscape-travel-desert-106401/",
        length: "13 feet",
        brake: "No",
        clearance: "No recommended for gravel road",
        sleeps: random.to_s,
        electrical: "12 volts",
        fridge: "yes",
        cooktop: "#{cooktop} stove(s)",
        sink: "yes",
        bathroom: bathroom,
        water: "yes",
        fuel: "propane tank",
        lighting: "Regular lamp",
        description: description,
        price: "$100/day"
    )
end

trailers = Trailer.all
puts "I've seeded #{trailers.count} of trailers"