require_relative '../config/environment.rb'
FIRST = ["Helen", "Montgomery", "Ginger", "Dana", "Beth", "Dale", "Isaac", "Orville", "Brenda", "Marlene"]
LAST = ["Pena", "Mckinney", "Burns", "Banks", "Cole", "Stephens", "Owens", "James", "Mckenzie", "Kim"]
ADJ = ["tiresome", "fearless", "woozy", "crowded", "parallel", "terrible", "orange", "paltry", "flimsy", "unaccountable", "unequaled", "gaping"]
NOUN = ["scarf", "camp", "governor", "pin", "current", "crook", "bag", "lettuce", "thumb", "texture", "development", "riddle", ]
CITIES =["Houston", "Austin", "San Antonio", "Dallas", "Corpus Christi"]


def rand_instance_name
  "#{ADJ.sample.capitalize} #{NOUN.sample.capitalize}"
end

def rand_name
  "#{FIRST.sample.capitalize} #{LAST.sample.capitalize}"
end

def rand_city
    CITIES.sample
end

10.times do 
    Gallery.new(rand_instance_name, rand_city)
end

50.times do 
    Artist.new(rand_name, rand(1..20))
end

500.times do
    artist = Artist.all.sample
    
    artist.create_painting(rand_instance_name, artist.years_experience*rand(1000..5000), Gallery.all.sample)
end


# binding.pry


puts "Total price for all paintings is $#{Painting.total_price}"

gal = Gallery.all.sample

# binding.pry

puts "#{gal.name} is located in #{gal.city}"
puts "There are the artists: #{gal.artist_names.join(", ")}"
puts "Most expensive painting are #{gal.most_expensive_painting.title}, it cost $#{gal.most_expensive_painting.price}"
   
art = Artist.most_prolific

puts "#{art.name} is a most prolific artist, he paints almost #{art.years_experience} years and did #{art.paintings.length} paintings"
puts "His/Her paintings are located in cities like: #{art.cities.join(", ")}"

puts "all artists paint for #{Artist.total_experience} years"

