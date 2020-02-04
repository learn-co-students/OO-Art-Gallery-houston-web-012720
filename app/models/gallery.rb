class Gallery

  attr_reader :name, :city
  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self 
  end

  def self.all
    @@all 
  end

  def paintings
    Painting.all.select {|p| p.gallery == self}
  end 

  def artists
    paintings.map {|a| a.artist}
  end

  def artist_names
    paintings.map {|a| a.artist.name}
  end

  def most_expensive_painting
    paintings.max_by {|p| p.price}
  end

end
