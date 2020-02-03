require_relative '../config/environment.rb'

a1 = Artist.new("a1",20)
a2 = Artist.new("a2",12)
a3 = Artist.new("a3",15)
a4 = Artist.new("a4",2)

g1 = Gallery.new("g1","New York")
g2 = Gallery.new("g2","Texas")

p1 = Painting.new("p1",200,a1,g1)
p2 = Painting.new("p2",300,a3,g1)
p3 = Painting.new("p3",1200,a2,g1)
p4 = Painting.new("p4",100,a2,g1)
p5 = Painting.new("p5",250,a3,g1)
p6 = Painting.new("p6",207,a1,g1)
p7 = Painting.new("p7",800,a4,g1)
p8 = Painting.new("p8",200,a1,g2)
p9 = Painting.new("p9",302,a2,g2)
p10 = Painting.new("p10",402,a3,g2)
p11 = Painting.new("p11",503,a2,g2)
p12 = Painting.new("p12",263,a1,g2)
p13 = Painting.new("p13",288,a4,g2)
p14 = Painting.new("p14",210,a4,g2)
p15 = Painting.new("p15",1000,a2,g2)



binding.pry

puts "Bob Ross rules."
