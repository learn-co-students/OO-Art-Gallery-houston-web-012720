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
    paintings.map {|painting| painting.gallery}
  end

  def cities
    galleries.map {|gallery| gallery.city}
  end

  def self.total_experience
    total = 0
    self.all.each {|artist| total += artist.years_experience}
    total
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

  def self.most_prolific
    # self.all.max(1) {|artist| ppye = artist.paintings.count / artist.years_experience}
    # why above not work 

    max_ppye = 0
    most_prolific = nil

    self.all.each do |artist|
      ppye = artist.paintings.count / artist.years_experience
      if ppye > max_ppye
        max_ppye = ppye
        most_prolific = artist
      end
    end
    most_prolific
  end
 
end