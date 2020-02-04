require_relative '../config/environment.rb'



g1 = Gallery.new("Houston Art Gallery", "Houston")
g2 = Gallery.new("San Jose Art Gallery", "San Jose")
g3 = Gallery.new("Dallas Art Gallery", "Dallas")
g4 = Gallery.new("Central Park Art Gallery", "New York")
g5 = Gallery.new("Sacramento Art Gallery", "Sacramento")

a1 = Artist.new("Juan", 2)
a2 = Artist.new("Michael", 15)
a3 = Artist.new("Issac", 24)
a4 = Artist.new("Jessica", 5)

p1 = Painting.new("Mona Lisa", 100000000, a1, g1)
p2 = Painting.new("Fake Mona Lisa", 100, a3, g5)
p3 = Painting.new("Michaelangelo's First Painting", 150000, a3, g5)
p4 = Painting.new("The River", 1500, a4, g2)
p5 = Painting.new("Amatuer", 150, a2, g4)
p6 = Painting.new("Dos Attempt", 1500, a2, g4)
p7 = Painting.new("Tranquil", 100, a2, g4)
p8 = Painting.new("Serendipity", 120, a2, g3)



binding.pry

puts "Bob Ross rules."
