# artist < --  paint --> gallary

class Painting

  attr_reader :title, :price

  @@all = []

  def initialize(title, price , artist , gallary)
    @title = title
    @price = price
  end
  def total.total_price
    #  Returns an `integer` that is the total price of all paintings
    total = 0 
    self.all.map do |paint|
      total += paint.price 
    end 
    total
  end

end
