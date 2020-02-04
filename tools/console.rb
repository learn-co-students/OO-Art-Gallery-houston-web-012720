require_relative '../config/environment.rb'

a1 = Artist.new("Bob Ross", 25)
a2 = Artist.new("Elmo", 1)

g1 = Gallery.new("Le Louvre", "Paris")
g2 = Gallery.new("MOMA", "Houston")

p1 = Painting.new("My Backyard", 150, a1, g2)
p2 = Painting.new("Colorado Winter", 280, a1, g1)
p3 = Painting.new("Dorothy", 5, a2, g2)


binding.pry

puts "Bob Ross rules."
