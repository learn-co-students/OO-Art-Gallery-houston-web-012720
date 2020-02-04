class Painting
  attr_accessor :gallery, :price
  attr_reader :title, :artist

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
    self.all.reduce(0) {|sum, painting| sum + painting.price}
  end

end
