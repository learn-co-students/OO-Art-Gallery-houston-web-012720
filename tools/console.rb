require_relative '../config/environment.rb'
#require 'pry'

a1 = Artist.new("Van Gogh", 12)
a2 = Artist.new("Munch", 17)
a3 = Artist.new("Da Vinci", 15)
a4 = Artist.new("Wood", 8)
a5 = Artist.new("Goya", 10)

g1 = Gallery.new("M.o.m.a", "New York")
g2 = Gallery.new("National Gallery", "Oslo")
g3 = Gallery.new("Louvre", "Paris")
g4 = Gallery.new("Art Institute", "Chicago")
g5 = Gallery.new("Museo Lazaro Galdiano", "Madrid")



p1 = Painting.new("Starry Night", 100, a1, g1)
p2 = Painting.new("The Scream", 200, a2, g2)
p3 = Painting.new("Mona Lisa", 300, a3, g3)
p4 = Painting.new("American Gothic", 400, a4, g4)
p5 = Painting.new("Witches Sabbath", 500, a5, g5)
p6 = Painting.new("Self Potrait", 600, a1, g5)
p7 = Painting.new("The Sick Child", 700, a2, g4)
p8 = Painting.new("The Last Supper", 800, a3, g3)
p9 = Painting.new("Young Corn", 900, a4, g2)
p10 = Painting.new("Los Disparates", 1000, a5, g1)

a1.create_painting("new one", 300, g1)


binding.pry

puts "Bob Ross is mediocre."
