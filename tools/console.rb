require_relative '../config/environment.rb'


artist1 = Artist.new("Ahmed", 5)
artist2 = Artist.new("Ali", 5)
artist3 = Artist.new("Mohammed", 5)
artist4 = Artist.new("Khalil", 5)
artist5 = Artist.new("Many", 5)


Gallary1 = Gallery.new("gallaryA", "Dubai")
Gallary2 = Gallery.new("gallaryB", "katy")
Gallary3 = Gallery.new("gallaryC", "Austun")
Gallary4 = Gallery.new("gallaryD", "SanAntonia")
Gallary5 = Gallery.new("gallaryE", "Sharjah")

Painting1 = Painting.new("love", 7 , artist1 , Gallary1)
Painting2 = Painting.new("Sky", 7 , artist2 , Gallary2)
Painting3 = Painting.new("Sunrise", 7 , artist2 , Gallary1)
Painting4 = Painting.new("Flower", 7 , artist4 , Gallary2)
Painting5 = Painting.new("Happinness", 7 , artist1 , Gallary5)







binding.pry

puts "Bob Ross rules."
