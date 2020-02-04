require 'pry'
require_relative '../config/environment.rb'

a1 = Artist.new('Jon', 5)
a2 = Artist.new('Arya', 2)
a3 = Artist.new('Danny', 4)
a4 = Artist.new('Bron', 1)

g1 = Gallery.new('Walls', 'Castleblack')
g2 = Gallery.new('Fineart', 'Kingslands')
g3 = Gallery.new('Flatiron', 'Winterfell')


p1 = Painting.new('Bastard', 20, a1, g2)
p2 = Painting.new('Knees', 40, a3, g2)
p3 = Painting.new('Daggar', 20, a2, g3)
p4 = Painting.new('Snow', 30, a1, g3)
p5 = Painting.new('Dragon', 100, a3, g1)
p6 = Painting.new('Sword', 20, a4, g2)





binding.pry
0

puts "Bob Ross rules."
