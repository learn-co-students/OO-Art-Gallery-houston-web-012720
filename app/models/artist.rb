class Artist

  @@all = []

  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience

    @@all << self    
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select{|painting| painting.artist == self}
    
  end

  def galleries
    paintings.map{|painting| painting.gallery}
  end

  def cities
    galleries.map{|gallery| gallery.city}.uniq
  end

  def self.total_experience
    @@all.inject(0){|total, artist| total + artist.years_experience}
  end

  def self.most_prolific
    @@all.max_by {|artist| artist.paintings.length / artist.years_experience}
  end

  def create_painting(title,price,gallery)
    Painting.new(title, price, self, gallery) 
  end

end
