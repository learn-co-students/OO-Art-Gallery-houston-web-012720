
# artist < -- paint --> gallary

class Artist
    @@all = [ ]

  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end
  def self.all
    @@all
  end 
  def paintings
    # Returns an `array` all the paintings by an artist
    Painting.all.select do |paint|
      paint.artist == self
    end
  end 
  def galleries
      # Returns an `array` of all the galleries that an artist has paintings in
      paintings.map do |paint|
        paint.gallary
      end 
  end
  def cities
    # Return an `array` of all cities that an artist has paintings in
    galleries.map do |gallary| 
      gallary.city
    end 
  end
  def self.total_experience
    # Returns an `integer` that is the total years of experience of all artists
      total = 0
      self.all.map do |artist|
      total += artist.years_experience
    end 
    total
  end
  def self.most_prolific
    # Returns an `instance` of the artist with the highest amount of paintings per year of experience. 
    # count max for this (total number of projects / years of expercied )
    self.all.max_by do |artist|
       artist.paintings.count / artist.years_experience
    end 
  end
  def create_painting(title , price, gallary)
    # Given the arguments of `title`, `price` and `gallery`, creates a new painting belonging to that artist
     Painting.new(title, price , self , gallary)
  end
end
