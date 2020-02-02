require 'pry'
require_relative '../app/models/artist.rb'
require_relative '../app/models/gallery.rb'
require_relative '../app/models/painting.rb'


a1 = Artist.new("joe" , 1) #1 p / 1 ye = 1 ppye
a2 = Artist.new("anna", 1) #2 p / 1 ye = 2 ppye

g1 = Gallery.new("animals", "Houston")
g2 = Gallery.new("creatures", "Dallas")

p1 = Painting.new("dog", 10, a1, g1)
p2 = Painting.new("cow", 20, a2, g2)
p3 = Painting.new("bird",30, a2, g1)

# p1 = Painting.new ("dog", "10", a1, g1)
# the space btwn new will throw an error



binding.pry 
0


