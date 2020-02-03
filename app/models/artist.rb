class Artist
  attr_reader :artist_name, :years_experience
  @@all = []
  def initialize(artist_name, years_experience)
    @artist_name = artist_name
    @years_experience = years_experience
    @@all << self 
  end

  def self.all 
    @@all 
  end

  def create_painting(title,price,gallery)
    Painting.new(title,price,self,galley)
  end

  def paintings
    Painting.all.select{|painting| painting.artist == self}
  end

  def galleries 
    paintings.map{|painting| painting.gallery}
  end

  def cities 
    paintings.map{|painting| painting.gallery.city}.uniq
  end

  def self.total_experience
    @@all.reduce(0){|total,artist| total + artist.years_experience}
  end

  def self.most_prolific
    hash = Hash.new{|h,k| h[k] = {:amount_painting => 0, :years_experience => 0, :avg => 0}}
    Painting.all.each do |painting| 
      hash[painting.artist][:amount_painting] += 1
      hash[painting.artist][:years_experience] = painting.artist.years_experience
    end
    hash.to_a.each{|painting| painting[1][:avg] = painting[1][:amount_painting] / painting[1][:years_experience].to_f}
    hash.to_a.max{|a,b| a[1][:avg] <=> b[1][:avg]}
  end

  def create_painting(title,price,gallery)
    Painting.new(title,self,price,gallery)
  end

end
