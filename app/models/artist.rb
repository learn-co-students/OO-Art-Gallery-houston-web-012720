class Artist

  attr_reader :name, :years_experience
  @@all = []
  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience

    @@all << self
  end

  def self.all 
    @@all 
  end

  def paintings
    Painting.all.select {|painting| painting.artist == self}
  end

  def galleries
    paintings.map {|painting| painting.gallery.name}
  end

  def cities
    paintings.map {|painting| painting.gallery.city}
  end


  def self.total_experience
    # @@all.map {|years_experience| name.years_experience}.sum
    @@all.reduce(0) {|sum, y| sum + y.years_experience}
  end

  def self.most_prolific
    @@all.max {|artist| (artist.paintings.count / artist.years_experience)}
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

  
end
