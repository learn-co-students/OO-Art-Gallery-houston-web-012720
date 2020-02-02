class Painting

  attr_accessor :title, :price, :artist, :gallery 

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery 
    @@all << self
  end

  def self.all 
    @@all
  end

  def self.total_price
    total = 0
    self.all.each {|painting| total += painting.price}
    total
  end

end