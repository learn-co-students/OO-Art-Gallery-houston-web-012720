class Painting
  attr_reader :painting_title, :price
  attr_accessor :artist, :gallery
  @@all = []
  def initialize(painting_title, price, artist, gallery)
    @painting_title = painting_title
    @price = price
    @artist = artist
    @gallery = gallery
    @@all << self 
  end

  def self.all 
    @@all 
  end

  def self.total_price
    @@all.reduce(0){|sum,painting| sum + painting.price}
  end
  
end
