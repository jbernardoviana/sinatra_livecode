require "faker"

100.times do
  resto = Restaurant.new(name: Faker::HarryPotter.spell , address:Faker::GameOfThrones.city )
  resto.save
end
