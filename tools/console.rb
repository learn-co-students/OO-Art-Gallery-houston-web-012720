require_relative '../config/environment.rb'

# artist_names = %w(Vien Paul Blake Stephen Giorgii)

# def create_artists(array)
#     array.each.with_index do |artist, index|
#         "a#{index}" = Artist.new(artist, rand(10))
#     end
# end
# 5.times do
#     Artist.new(artist_names.sample, rand(10))
# end
# # def create_artist(array)
#     newarr = array.map.with_index do |artist, index|
#         "a"+(index.to_s)
#     end
#     newerarr = newarr.map.with_index do |var, index|
#         var = array[index]
#     end
#     p newerarr
# end

# create_artist(artist_names)

a1 = Artist.new("Vien", 4)
a2 = Artist.new("Paul", 7)
a3 = Artist.new("Blake", 3)
a4 = Artist.new("Stephen", 10)
# art_array = [a1, a2, a3, a4]

# gallery_list = %w(Archway Insomnia Creative_Bean, Dancing_Bear, Snifters, Lamplight)

# city_list = %w(Houston, Waco, FtSmith)

# def create_galleries(galleries, cities)
#     galleries.each do |gallery|
#         gallery = Gallery.new(gallery, cities.sample)
#     end
# end

g1 = Gallery.new("Archway Gallery", "Houston")
g2 = Gallery.new("Insomnia Gallery", "Houston")
g3 = Gallery.new("Creative Bean", "Fort Smith")
g4 = Gallery.new("Dancing Bear", "Waco")

# gal_array = [g1, g2, g3, g4]

painting_list = ["Red Blue Chair", "Luncheon on the Island of the Grande Jatte", "Guernica", "Arnolfini Portrait", "Scream", "Kiss", "Starry Night", "Persistence of Memory", "Treachery of Images", "Birth of Venus", "Self Portrait", "Venus of Urbino"]

p1 = Painting.new("Red Blue Chair", 1000, a1, g1)
p2 = Painting.new("Luncheon on the Island of the Grande Jatte", 500, a1, g2)
p3 = Painting.new("Guernica", 2000, a2, g2)
p4 = Painting.new("Arnolfini Portrait", 333, a2, g3)
p5 = Painting.new("The Scream", 444, a2, g3)
p6 = Painting.new("The Kiss", 589, a3, g4)
p7 = Painting.new("Starry Night", 9898, a3, g1)
p8 = Painting.new("Persistence of Memory", 742, a4, g3)
p9 = Painting.new("Treachery of Images", 19192, a4, g4)
p10 = Painting.new("Birth of Venus", 9919, a4, g2)

# def create_paintings(array)
#     array.each do |painting|
#         painting.index = Painting.new(painting, rand(500), art_array.sample, gal_array.sample)
#     end
# end


binding.pry

puts "Bob Ross rules."
