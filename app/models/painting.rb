# artist < --  paint --> gallary

class Painting

  attr_reader :title, :price , :artist , :gallary

  @@all = []

  def initialize(title, price , artist , gallary)
    @title = title
    @price = price
    @artist = artist
    @gallary = gallary
    @@all << self
  end
  def self.all
    @@all
  end 
  def self.total_price
    #  Returns an `integer` that is the total price of all paintings
    total = 0 
    self.all.map do |paint|
      total += paint.price 
    end 
    total
  end

end
