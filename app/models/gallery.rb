# artist < --  paint --> gallary
class Gallery

  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city
  end
  def paintings
    # Returns an `array` of all paintings in a gallery
    Painting.all.select do |paint|
      paint.gallary == self 
    end 
  end
  def artists
    # Returns an `array` of all artists that have a painting in a gallery
    paintings.map do |paint|
      paint.artist 
    end 
  end
  def artist_names
    # Returns an `array` of the names of all artists that have a painting in a gallery
    artists.map do |artist|
      artist.name
    end
  end
  def most_expensive_painting
    #  Returns an `instance` of the most expensive painting in a gallery
    paintings.max_by do |paint|
      paint.price
    end


end
