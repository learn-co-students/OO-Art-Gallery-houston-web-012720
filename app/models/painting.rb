class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []

  def initialize(title, artist, price, gallery )
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
    @@all.sum { |sum = 0, painting|
      sum = sum + painting.price
    }
  end

end


# * `Painting.all`
# * Returns an `array` of all the paintings

# * `Painting.total_price`
# * Returns an `integer` that is the total price of all paintings