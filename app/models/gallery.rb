class Gallery

  @@all =[]

  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city

    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select{|paintings| paintings.gallery == self}
  end

  def artists
   paintings.map{|paintings| paintings.artist}.uniq
  end

  def artist_name
    artists.map{|artists|artists.name}
  end

  def most_expensive_painting
    paintings.max_by {|painting| painting.price}
  end

end
