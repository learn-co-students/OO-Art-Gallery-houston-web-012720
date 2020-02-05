require_relative '../config/environment.rb'

a1 = Artist.new("Gian", 12)
a2 = Artist.new("Pablo", 5)
a3 = Artist.new("Chris", 7)

g1 = Gallery.new("Houston Gallery", "Houston")
g2 = Gallery.new("NYC Gallery", "NYC")
g3 = Gallery.new("Miami Gallery", "Miami")

p1 = Painting.new("Moonlight", 120,a3,g3)
p2 = Painting.new("Sunlight", 110,a3,g3)
p3 = Painting.new("Redlight", 10,a3,g2)

p4 = Painting.new("Greenlight", 12,a1,g2)
p5 = Painting.new("Yellnlight", 100,a3,g1)
p6 = Painting.new("Stars", 1530,a3,g1)
binding.pry

puts "Bob Ross rules."
